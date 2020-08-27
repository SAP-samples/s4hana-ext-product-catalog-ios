import UIKit
import SAPOData
import SAPOfflineOData
import SAPFiori
import SAPCommon
import SAPFioriFlows


class MasterViewController: UITableViewController, SAPFioriLoadingIndicator {
        
    // MARK: - UI Related Properties
    
    let defaultProductIcon = UIImage(named:"Icn.png")
    let toastMessageUpdated = "Successful Refresh"
    let toastMessageDownloadFailed = "Download Failed! Please try again later."
    
    // MARK: - Properties
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var loadingIndicator: FUILoadingIndicatorView?
    // Language for Product Description preconfigured for English
    let productDescriptionLanguage: String = "EN"
    var products = [AProductType]()
    var descriptions = [AProductDescriptionType]()
    var apiproductsrvEntities: APIPRODUCTSRVEntities<OfflineODataProvider>!
    
    let queriesTerminated = DispatchGroup()
    
    // Search Bar
    var searchController: FUISearchController?
    var isFiltered = false
    var searchString: String?
    var filteredProducts = [AProductType]()
    
    var initializedSplitViewHasSet = false
    
    // Default for the highlighted cell is the first entry in the table
    private var highlightedCell: IndexPath = IndexPath(row: 0, section: 0)
    
    // MARK: - View Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchBar()
        
        let syncMasterView = DispatchGroup()
        
        syncMasterView.enter()
        self.showFioriLoadingIndicator("Loading Products...")

        // Load Product API
        guard let loadApiProductSrvEntities = ServiceConfiguration.initApiProductService(controller: self) else {
            return
        }
        
        self.apiproductsrvEntities = loadApiProductSrvEntities
        
        self.loadProductData() {
            syncMasterView.leave()
        }
                
        syncMasterView.notify(queue: .main) {
            self.makeDefaultSelection()
            self.hideFioriLoadingIndicator()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                if isFiltered, searchController!.searchBar.text != "" {
                    controller.productID = self.filteredProducts[indexPath.row].product!
                } else {
                    controller.productID = self.products[indexPath.row].product!
                }
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isFiltered ? filteredProducts.count : products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! FUIObjectTableViewCell
        
        let product: AProductType = (isFiltered ? filteredProducts[indexPath.row] : products[indexPath.row])
        cell.detailImage = defaultProductIcon

        let description  = descriptions.filter { $0.product == product.product }
        
        if let headline = description.first?.productDescription {
                cell.headlineText = headline
        } else {
            cell.headlineText = "- No Description Found -"
        }
        
        cell.headlineLabel.textColor = .preferredFioriColor(forStyle: .primary1)
        
        cell.subheadlineText = product.product
        cell.subheadlineLabel.textColor = .preferredFioriColor(forStyle: .primary1)
        
        cell.statusText = product.productType!
        cell.statusLabel.textColor = .preferredFioriColor(forStyle: .primary1)
        
        cell.substatusText = product.productGroup!
        cell.substatusLabel.textColor = .preferredFioriColor(forStyle: .primary1)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // Keeping track of the selected cell during the scrolling
        if highlightedCell == indexPath {
            cell.setSelected(true, animated: false)
            cell.setHighlighted(true, animated: false)
        }
    }
    
    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Check if the previously selected cell exists. When it's not displayed in the View, tableView.cellForRow returns nil
        if let previousCell: FUIObjectTableViewCell = (self.tableView.cellForRow(at: highlightedCell) as? FUIObjectTableViewCell) {
            // Deselect the previous cell
            previousCell.setHighlighted(false, animated: false)
            previousCell.setSelected(false, animated: false)
        }
        // Select and highlight the selected cell when it's shown in the View
        let currentCell = self.tableView.cellForRow(at: indexPath) as! FUIObjectTableViewCell
        currentCell.setHighlighted(true, animated: false)
        currentCell.setSelected(true, animated: false)
        self.highlightedCell = indexPath
    }
    
    // MARK - View Configuration
    
    /**
     *  Triggers a refresh of the Back-end Data. A Toast Message indicates a successful refresh.
     */
    func updateTable() {
        
        self.showFioriLoadingIndicator("Updating Products...")
        OnboardingSessionManager.shared.onboardingSession?.odataController.synchronize(completionHandler: { error in
            
            if let _ = error {
                // Error happens in case the device is offline and can't connect to backed
                DispatchQueue.main.async {
                    self.hideFioriLoadingIndicator()
                    FUIToastMessage.show(message: self.toastMessageDownloadFailed,
                                         icon: FUIIconLibrary.system.information,
                                         inView: self.tableView,
                                         withDuration: 3.0,
                                         maxNumberOfLines: 1)
                }
            } else {
                // For a successfull download, execute the refresh request against the offline database
                DispatchQueue.main.async {
                    self.loadProductData() {
                        self.hideFioriLoadingIndicator()
                        FUIToastMessage.show(message: self.toastMessageUpdated)
                    }
                }
            }
        })
    }
    
    // MARK: - Search Bar
    
    /**
     *  Initialization and Set-up of the Views Searchbar.
     */
    private func configureSearchBar() {
        searchController = FUISearchController(searchResultsController: nil)
        searchController!.searchResultsUpdater = self
        searchController!.searchBar.placeholderText = "Enter the Product Id"
        self.tableView.tableHeaderView = searchController?.searchBar
        definesPresentationContext = true
    }
    
    // MARK: - Table Cell Highlighting
    
    /**
     *  Checks, if a default selection of a Table cell is possible. A default selection can be performed just one time, when the Product List is initialized.
     */
    private func makeDefaultSelection() {
        if self.initializedSplitViewHasSet == false {
            if !(self.products.isEmpty) {
                self.setDefaultDetailView()
            }
        }
    }
    
    /**
     *  Performs a default selection in case when the App is presented in a Split View.
     */
    private func setDefaultDetailView() {
        
        // Automatically select first element if we have two panels (iPhone plus and iPad only)
        if self.splitViewController!.isCollapsed || apiproductsrvEntities == nil {
            return
        }
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            let defaultDetailViewController: DetailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as! DetailViewController
            
            // Select as a default the first product from the List
            defaultDetailViewController.productID = products.first!.product!
            self.initializedSplitViewHasSet = true
            defaultDetailViewController.setUpDetailView()
        }
    }
    
    // MARK: - CRUD Operations
    
    /**
     *   Triggers the CRUD Read Request for the Product List View. Completion Handler is called on the main thread.
     *   - parameter completionHandler: Closure Operations executed asynchronous
     */
    private func loadProductData(completionHandler: @escaping() -> Void) {
        requestEntities { error in
            guard error == nil else {
                return
            }
            DispatchQueue.main.async() {
                completionHandler()
            }
        }
    }
    
    /**
     *  Executes the Read Request, for to retrieve the relevant data for the MasterView. This requires the information for the Product List
     *  and also - in this case - the enlish description. Hence, two queries are sent, to retrive the information from two different Entities.
     *   - parameter completionHandler: Closure for Error Handling
     */
    func requestEntities(completionHandler: @escaping (Error?) -> Void) {
        
        // Caches the retrieved data in temporary variables
        var loadedProducts = [AProductType]()
        var loadedDescriptions = [AProductDescriptionType]()
        
        // An default object, which is used in case there is no data available
        let emptyProdDescr: AProductDescriptionType = AProductDescriptionType()
        
        // Define the queries, which retrieve only the required properties
        let productQuery = QueryDefinitionHelper.initProductMainViewQuery()

        self.queriesTerminated.enter()
        
        // Execute the Query to retrieve the Product information
        apiproductsrvEntities.fetchAProduct(matching: productQuery) { aProduct, error in
            guard let aProduct = aProduct else {
                completionHandler(error!)
                return
            }
            
            loadedProducts = aProduct
            
            self.queriesTerminated.leave()
        }
            
        self.queriesTerminated.notify(queue: .main) {
            
            // Extract per Product a certain description for a Language
            let extractedDescriptions: [[AProductDescriptionType]] = loadedProducts.map { $0.toDescription.filter {$0.language == self.productDescriptionLanguage}}
            // Assigns descriptions to products, in case there is no description, a default is assigned
            extractedDescriptions.forEach {description in loadedDescriptions.append(description.first ?? emptyProdDescr) }
            
            self.products = loadedProducts
            self.descriptions = loadedDescriptions

            self.tableView.reloadData()
            completionHandler(nil)
            
        }
    }
    
    // MARK: - Actions
    
    /**
     *   Refresh action executed, which requests a reloading of the Backend-data and refreshing the UI's Product View List.
     *   - parameter sender: The UIBarButtonItem object used as a button
     */
    @IBAction func doRefreshMasterView(_ sender: UIBarButtonItem) {
        self.updateTable()
    }
}

extension MasterViewController: UISearchResultsUpdating {
    
    public func updateSearchResults(for searchController: UISearchController) {
        searchString = searchController.searchBar.text!
        if searchString == nil {
            searchString = ""
        }
        isFiltered = !searchString!.isEmpty
        filteredProducts = products.filter({
            return ($0.product?.localizedCaseInsensitiveContains(searchString!))!
        })
        tableView.reloadData()
    }
}

