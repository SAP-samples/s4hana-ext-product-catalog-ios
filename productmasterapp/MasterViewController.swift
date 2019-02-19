import UIKit
import SAPOData
import SAPFiori
import SAPCommon

class MasterViewController: UITableViewController, SAPFioriLoadingIndicator{
        
    // MARK: - UI Related Properties
    
    let defaultProductIcon = UIImage(named:"Icn.png")
    let toastMessageUpdated = "Successful Refresh"
    
    // MARK: - Properties
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var loadingIndicator: FUILoadingIndicatorView?
    // Language for Product Description preconfigured for English
    let productDescriptionLanguage: String = "EN"
    var products = [AProductType]()
    
    let queriesTerminated = DispatchGroup()
    
    // Search Bar
    var searchController: FUISearchController?
    var isFiltered = false
    var searchString: String?
    var filteredProducts = [AProductType]()
    
    var initializedSplitViewHasSet = false
    
    // Default for the highlighted cell is the first entry in the table
    private var highlightedCell: IndexPath = IndexPath(row: 0, section: 0)
    
    private var apiproductsrvEntities: APIPRODUCTSRVEntities<OnlineODataProvider> {
        return self.appDelegate.apiproductsrvEntities
    }
    
    // MARK: - View Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchBar()
        
        let syncMasterView = DispatchGroup()
        
        syncMasterView.enter()
        self.showFioriLoadingIndicator("Loading Products...")
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

        if let headline = product.toDescription.first?.productDescription {
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
        DispatchQueue.main.async {
            self.loadProductData() {
                FUIToastMessage.show(message: self.toastMessageUpdated)
            }
        }
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
        if self.splitViewController!.isCollapsed || self.appDelegate.apiproductsrvEntities == nil {
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
     *   Executes the Read Request, for to retrieve the data for the Product List. The Query expands to all required Entities: Description, Plant and Sales. The newly retrieved data is cached temporarily in local variables to ensure that the Application can still operate on the old data. Summarized, this function sends two queries - one for Product information’s, and one for the Products English Description - and combines them together.
     *   - parameter completionHandler: Closure for Error Handling
     */
    func requestEntities(completionHandler: @escaping (Error?) -> Void) {
        
        // Caches the retrieved data in temporary variables
        var loadedProducts = [AProductType]()
        var loadedDescriptions = [AProductDescriptionType]()
        
        let productQuery = DataQuery().select(AProductType.product, AProductType.productType, AProductType.productGroup)
        let descriptionQuery = DataQuery().select(AProductDescriptionType.product, AProductDescriptionType.productDescription).filter(AProductDescriptionType.language.equal(productDescriptionLanguage))
        
        self.queriesTerminated.enter()
        self.queriesTerminated.enter()
        
        // Execute the Query to retrieve the Product information
        self.apiproductsrvEntities.fetchAProduct(matching: productQuery) { aProduct, error in
            guard let aProduct = aProduct else {
                completionHandler(error!)
                return
            }
            loadedProducts = aProduct
            
            self.queriesTerminated.leave()
        }
        
        // Execute the Query to retrieve the English Description for the Products
        self.apiproductsrvEntities.fetchAProductDescription(matching: descriptionQuery) { aDescription, error in
            guard let aDescription = aDescription else {
                completionHandler(error!)
                return
            }
            loadedDescriptions = aDescription
            
            self.queriesTerminated.leave()
        }
        
        self.queriesTerminated.notify(queue: .main) {
            loadedProducts = self.appendDescriptionsToProducts(products: loadedProducts, descriptions: loadedDescriptions)
            self.products = loadedProducts
            self.tableView.reloadData()
            completionHandler(nil)
        }
    }
    
    /**
     *   Assigns and appends each Products Description to its corresponding Product
     *   - parameter products: List of Products
     *   - parameter descriptions: List of Descriptions, which are going to be appended to the Products
     *   - returns: An array with product entity object, which have the correctly  appended Descriptions
     */
    func appendDescriptionsToProducts(products: [AProductType], descriptions: [AProductDescriptionType]) -> [AProductType] {
    
        for product in products {
            product.toDescription = descriptions.filter { $0.product == product.product }
        }
        return products
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

