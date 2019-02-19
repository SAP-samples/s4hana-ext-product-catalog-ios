import UIKit
import SAPFiori
import SAPOData

class DetailViewController: UITableViewController, SAPFioriLoadingIndicator, RefreshSectionViewDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableContentView: UITableView!
    
    // MARK: - Segue Constants
    
    private static let descriptionSegue = "showDescription"
    private static let plantSegue = "showPlant"
    private static let saleSegue = "showSale"
    
    //private let segues = [self.descriptionSegue, self.plantSegue, self.saleSegue]
    
    // MARK: - UI Related Constants
    
    private static let sectionHeaderHeight: CGFloat = 60
    private static let sectionFooterHight: CGFloat = 2
    private static let cellsHeight: CGFloat = 55
    
    private let sectionTitles: [Int: String] = [0: "BASIC DATA", 1: "DESCRIPTIONS", 2: "PLANTS", 3: "SALES"]
    
    private let propertiesForProduct: [Int: [String: Property]] = [0: ["Product ID": AProductType.product], 1: ["Product Group": AProductType.productGroup], 2: ["Product Type": AProductType.productType], 3: ["Base Unit": AProductType.baseUnit], 4: ["Brand": AProductType.brand], 5: ["Country of Origin": AProductType.countryOfOrigin], 6: ["Product Manufacturer Number": AProductType.productManufacturerNumber], 7: ["Gross Weight": AProductType.grossWeight], 8: ["Size or Dimensional Text": AProductType.sizeOrDimensionText], 9: ["Created by User": AProductType.createdByUser], 10: ["Creation Date": AProductType.creationDate], 11: ["Last Changed by User": AProductType.lastChangedByUser], 12: ["Last Change Date": AProductType.lastChangeDate]]
    
    private var expandableSections: [SectionHandler] = []
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var loadingIndicator: FUILoadingIndicatorView?
    
    // MARK: - Properties
    
    var productID: String?
    var product: AProductType?
    
    private var apiproductsrvEntities: APIPRODUCTSRVEntities<OnlineODataProvider> {
        return self.appDelegate.apiproductsrvEntities
    }
    
    // MARK: - View Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setUpDetailView()
        
        self.tableContentView.rowHeight = DetailViewController.cellsHeight
        self.tableContentView.sectionHeaderHeight = DetailViewController.sectionHeaderHeight
    
        self.tableContentView.backgroundColor = UIColor.groupTableViewBackground
        // Don't show empty cells at the end of the TableView
        self.tableContentView.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let currentSegue = segue.identifier {
            if let indexPath = tableView.indexPathForSelectedRow {
                if let loadedProduct = product {
                    switch currentSegue {
                        
                    case DetailViewController.descriptionSegue:
                        let controller = segue.destination as! DescriptionDetailViewController
                        controller.productDescription = loadedProduct.toDescription[indexPath.row]
                    
                    case DetailViewController.plantSegue:
                        let controller = segue.destination as! PlantDetailViewController
                        controller.productPlant = loadedProduct.toPlant[indexPath.row]
                            
                    case DetailViewController.saleSegue:
                        let controller = segue.destination as! SalesDetailViewController
                        controller.productSale = loadedProduct.toSalesDelivery[indexPath.row]
                        
                    default:
                        break
                    }
                }
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let loadedProduct = product {
            switch identifier {
            case DetailViewController.descriptionSegue:
                return isCellInSectionSelectable(loadedProduct.toDescription.count)
            case DetailViewController.plantSegue:
                return isCellInSectionSelectable(loadedProduct.toPlant.count)
            case DetailViewController.saleSegue:
                return isCellInSectionSelectable(loadedProduct.toSalesDelivery.count)
            default:
                return false
            }
        }
        return false
    }
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return product != nil ? sectionTitles.count : 0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard product != nil else {
            // Return an empty View in case the product data was not loaded yet
            return UIView()
        }
        
        let sectionCell = expandableSections[section].getCell()
        sectionCell.sectionTitle.text = sectionTitles[section]
        sectionCell.isExpanded = expandableSections[section].isSectionExpanded
        return sectionCell
    
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return DetailViewController.sectionFooterHight
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if !expandableSections.isEmpty {
            return self.expandableSections[section].calculateSectionSize()
        }
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> FUITextFieldFormCell {
        // Optional unchaining ensures only to execute when the product was loaded
        if let loadedProduct = product {
            // Depending on the section, different cells are created
            switch indexPath.section {
                
            // Basic Data Section
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ProductPropertyID", for: indexPath) as! FUITextFieldFormCell
                return cellForProductType(cell, indexPath: indexPath, currentEntity: loadedProduct)
                
            // Descriptions Section
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionID", for: indexPath) as! FUITextFieldFormCell
                return cellForDescriptionType(cell, indexPath: indexPath, currentEntity: loadedProduct)
                
            // Plants Section
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: "PlantID", for: indexPath) as! FUITextFieldFormCell
                return cellForPlantType(cell, indexPath: indexPath, currentEntity: loadedProduct)
                
            // Sales Section
            case 3:
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "SaleID", for: indexPath) as! FUITextFieldFormCell
                return cellForSalesType(cell, indexPath: indexPath, currentEntity: loadedProduct)
                
            // In all other cases show an error popup
            default:
                let alertController = UIAlertController(title: "Loading the details failed", message: "Could not load the data. Please try again, or restart the application.", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: .default))
                OperationQueue.main.addOperation({
                    // Present the alertController
                    self.present(alertController, animated: true)
                })
            }
        }
        let emptyCell = tableView.dequeueReusableCell(withIdentifier: "ProductPropertyID", for: indexPath) as! FUITextFieldFormCell
        initializeCellWithDefaultConfigurations(emptyCell, keyName: " ", value: " ")
        return emptyCell
    }
    
    // MARK: - Cell Creator Functions
    
    /**
     *   Add to a cell the specific values of properties for the product. The definition for the cells content is specified in the constant "propertiesForProduct".
     *   - parameter cell: Cell from the Table View, which name and value are going to be specified
     *   - parameter indexPath: The index for detecting the correct values for the cell
     *   - returns: Specified cell with all required values
     */
    private func cellForProductType(_ cell: FUITextFieldFormCell!, indexPath: IndexPath, currentEntity: AProductType) -> FUITextFieldFormCell {
        
        cell.keyName = (propertiesForProduct[indexPath.row]?.first?.key)!
        cell.isEditable = false
        
        let property: Property = (propertiesForProduct[indexPath.row]?.first?.value)!
        
        if let cellValue = currentEntity.dataValue(for: property)?.toString() {
            cell.value = cellValue
        } else {
            // For the case, when the entity value is empty or not set
            cell.value = " "
        }
        return cell
    }
    
    /**
     *   Processes the TableView's cells with Description Entity related content. In the case, when no cells are available with Descriptions, a default will set, to indicate that no items for Descriptions are available. It is not possible to navigate into such an empty cell.
     *   - parameter cell: Cell from the Table View, which name and value are specified are going to be specified
     *   - parameter indexPath: The index for detecting the current processed row in the Table
     *   - returns: Specified cell with all required Description values
     */
    private func cellForDescriptionType(_ cell: FUITextFieldFormCell!,  indexPath: IndexPath, currentEntity: AProductType?) -> FUITextFieldFormCell {
        
        guard let entityContent = currentEntity, !entityContent.toDescription.isEmpty else {
            // When the cell is stated as empty, there is no further Navigation possible inside that cell
            initializeCellWithDefaultConfigurations(cell, keyName: "No items found.", value: " ")
            return cell
        }
        
        cell.keyName = entityContent.toDescription[indexPath.row].productDescription
        cell.value = entityContent.toDescription[indexPath.row].language!
        cell.isEditable = false
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    
    /**
     *   Processes the TableView's cells with Plant Entity related content. In the case, when no cells are available with Plants, a default will set, to indicate that no items for Plants are available. It is not possible to navigate into such an empty cell.
     *   - parameter cell: Cell from the Table View, which name and value are specified are going to be specified
     *   - parameter indexPath: The index for detecting the current processed row in the Table
     *   - returns: Specified cell with all required Plant values
     */
    private func cellForPlantType(_ cell: FUITextFieldFormCell!, indexPath: IndexPath, currentEntity: AProductType?) -> FUITextFieldFormCell {
        
        initializeCellWithDefaultConfigurations(cell, keyName: "No items found.", value: " ")
        // When the cell is stated as empty, there is no further Navigation possible inside that cell
        if let entityContent = currentEntity {
            if !entityContent.toPlant.isEmpty {
                cell.keyName = entityContent.toPlant[indexPath.row].plant
                cell.value = "\(entityContent.toPlant[indexPath.row].maximumLotSizeQuantity!)"
                cell.accessoryType = .disclosureIndicator
            }
        }
        return cell
    }
    
    /**
     *   Processes the TableView's cells with Sales Entity related content. In the case, when no cells are available with Sales, a default will set, to indicate that no items for Sales are available. It is not possible to navigate into such an empty cell.
     *   - parameter cell: Cell from the Table View, which name and value are specified are going to be specified
     *   - parameter indexPath: The index for detecting the current processed row in the Table
     *   - returns: Specified cell with all required Sales values
     */
    private func cellForSalesType(_ cell: FUITextFieldFormCell!,  indexPath: IndexPath, currentEntity: AProductType?) -> FUITextFieldFormCell {
        
        initializeCellWithDefaultConfigurations(cell, keyName: "No items found.", value: " ")
        // When the cell is stated as empty, there is no further Navigation possible inside that cell
        if let entityContent = currentEntity {
            if !entityContent.toSalesDelivery.isEmpty {
                cell.keyName = entityContent.toSalesDelivery[indexPath.row].productSalesOrg
                cell.value = entityContent.toSalesDelivery[indexPath.row].productSalesStatus!
                cell.accessoryType = .disclosureIndicator
            }
        }
        return cell
    }
    
    /**
     *   Default initialization of a cells name and value. The cell is configured as non-editable.
     *   - parameter keyName: Set the cells name
     *   - parameter value: Set the cells value
     */
    private func initializeCellWithDefaultConfigurations(_ cell: FUITextFieldFormCell, keyName: String, value: String) {
        cell.isEditable = false
        cell.keyName = keyName
        cell.value = value
    }
    
    // MARK: - CRUD Operations
    
    /**
     *   Triggers the CRUD Read Request for a specific selected Product.
     *   - parameter productId: Product entity key of the currently selected Product
     *   - parameter completionHandler: Closure Operations executed asynchronous
     */
    private func loadDetailData(productId: String, completionHandler: @escaping() -> Void){
        self.requestSelectedProductEntities(productId: productId) { error in
            guard error == nil else {
                return
            }
            DispatchQueue.main.async() {
                completionHandler()
            }
        }
    }
    
    /**
     *   Executes the Read Request, for a specific Product. The Query expands to all required Entities: Description, Plant and Sales.
     *   - parameter productId: Filters the Query Request by the selected Product ID
     *   - parameter completionHandler: Closure for Error Handling
     */
    private func requestSelectedProductEntities(productId: String, completionHandler: @escaping (Error?) -> Void) {
        // Query to load the product entity, only with the required properties
        let extendedProductQuery = DataQuery().select(AProductType.product, AProductType.productType, AProductType.productGroup, AProductType.baseUnit, AProductType.brand, AProductType.countryOfOrigin, AProductType.productManufacturerNumber, AProductType.grossWeight, AProductType.sizeOrDimensionText, AProductType.createdByUser, AProductType.creationDate, AProductType.lastChangeDate, AProductType.lastChangedByUser, AProductType.toDescription, AProductType.toPlant, AProductType.toSalesDelivery).filter(AProductType.product.equal(productId)).expand(AProductType.toDescription,AProductType.toPlant,AProductType.toSalesDelivery)
        
        self.apiproductsrvEntities.fetchAProduct(matching: extendedProductQuery) { aDetailProduct, error in
            guard let aSelectedDetailProduct = aDetailProduct else {
                completionHandler(error!)
                return
            }
            self.product = aSelectedDetailProduct.first!
            self.initializeSections()
            completionHandler(nil)
        }
    }
    
    // MARK: - Set up of the Table View
    
    /**
     *   Initialization of the Detail View, which includes the execution of the asynchronous Read Request and its corresponding synchronization.
     */
    func setUpDetailView() {
        if let selectedProduct = productID {
            let syncDetailView = DispatchGroup()
            syncDetailView.enter()
            self.showFioriLoadingIndicator("Loading Details...")
            self.loadDetailData(productId: selectedProduct) {
                syncDetailView.leave()
            }
            
            // Synchronize the Read Request and Refresh the Views UI
            syncDetailView.notify(queue: .main) {
                self.tableContentView.register(FUITextFieldFormCell.self, forCellReuseIdentifier: "CellId")
                self.tableContentView.reloadData()
                self.hideFioriLoadingIndicator()
            }
        }
    }
    
    /**
     *   Definition and initialization of the Views sections.
     */
    private func initializeSections() {
        let section1: SectionHandler = SectionHandler(numberOfCells: self.propertiesForProduct.count, isSectionExpanded: true, delegate: self)
        let section2: SectionHandler = SectionHandler(numberOfCells: (self.product?.toDescription.count)!, isSectionExpanded: false, delegate: self)
        let section3: SectionHandler = SectionHandler(numberOfCells: (self.product?.toPlant.count)!, isSectionExpanded: false, delegate: self)
        let section4: SectionHandler = SectionHandler(numberOfCells: (self.product?.toSalesDelivery.count)!, isSectionExpanded: false, delegate: self)
        
        self.expandableSections = [section1, section2, section3, section4]
    }
    
    // MARK: - Helper
    
    /**
     *   Determinates, if a cell is selectable for a Drill-Down View, or not. Usually the cells are selectable with the except of the Placeholder Cells, which states, that a Section has no items available.
     *   - parameter totalAmountOfDataSetsInSection: The original amount of datasets for each Section provided from the backend. Each dataset represents a cell in a Section. The Placeholder Cell is not counted here.
     *   - returns: Boolean, stating, if a cell in a section can be selected or not
     */
    func isCellInSectionSelectable(_ totalAmountOfDataSetsInSection: Int) -> Bool {
        if let indexPath = tableView.indexPathForSelectedRow {
            // Set a Placeholder Cell as not accessible
            // amountOfCellsShownInView counts the Placeholder Cell
            let amountOfCellsShownInView: Int = self.tableContentView.numberOfRows(inSection: indexPath.section)
            if totalAmountOfDataSetsInSection == 0 && totalAmountOfDataSetsInSection < amountOfCellsShownInView {
                return false
            }
        }
        return true
    }

    // MARK: - Delegate on Section Button Pressed
    
    /**
     *   UI Views refresh action when an Expand or Collapse of a Section is performed via the Delegate.
     */
    func refreshViewOnExpandCollapseAction() {
        self.tableView.reloadData()
    }
}
