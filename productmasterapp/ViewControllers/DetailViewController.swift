import UIKit
import SAPFiori
import SAPOData
import SAPOfflineOData
import SAPFioriFlows

class DetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator, RefreshSectionViewDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableContentView: UITableView!
    
    // MARK: - Segue Constants
    
    private static let descriptionSegue = "showDescription"
    private static let plantSegue = "showPlant"
    private static let saleSegue = "showSale"
    
    // MARK: - UI Related Constants
    
    private static let sectionHeaderHeight: CGFloat = 60
    private static let sectionFooterHight: CGFloat = 2
    private static let cellsHeight: CGFloat = 55
    
    private let cellLabelForEmptyCell: String = "No items found."
    private let cellValueForEmptyCell: String = " "
    
    private let sectionTitles: [Int: String] = [0: "BASIC DATA",
                                                1: "DESCRIPTIONS",
                                                2: "PLANTS",
                                                3: "SALES"]
    
    private let propertiesForProduct: [Int: [String: Property]] = [0: ["Product ID": AProductType.product],
                                                                   1: ["Product Group": AProductType.productGroup],
                                                                   2: ["Product Type": AProductType.productType],
                                                                   3: ["Base Unit": AProductType.baseUnit],
                                                                   4: ["Brand": AProductType.brand],
                                                                   5: ["Country of Origin": AProductType.countryOfOrigin],
                                                                   6: ["Product Manufacturer Number": AProductType.productManufacturerNumber],
                                                                   7: ["Gross Weight": AProductType.grossWeight],
                                                                   8: ["Size or Dimensional Text": AProductType.sizeOrDimensionText],
                                                                   9: ["Created by User": AProductType.createdByUser],
                                                                   10: ["Creation Date": AProductType.creationDate],
                                                                   11: ["Last Changed by User": AProductType.lastChangedByUser],
                                                                   12: ["Last Change Date": AProductType.lastChangeDate]]
    
    private var expandableSections: [SectionHandler] = []
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var loadingIndicator: FUILoadingIndicatorView?
    
    // MARK: - Properties
    
    var apiproductsrvEntities: APIPRODUCTSRVEntities<OfflineODataProvider>!

    var productID: String?
    
    var productEntity: AProductType?
    var productDescriptionEntity: [AProductDescriptionType]?
    var productPlantEntity: [AProductPlantType]?
    var productSalesDeliveryEntity: [AProductSalesDeliveryType]?
    
    let queriesTerminated = DispatchGroup()
    
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
                
                switch currentSegue {
                        
                case DetailViewController.descriptionSegue:
                    guard let loadedProductDescriptionEntity = productDescriptionEntity else {
                        return
                    }
                    
                    let controller = segue.destination as! DescriptionDetailViewController
                    controller.productDescription = loadedProductDescriptionEntity[indexPath.row]
                        
                case DetailViewController.plantSegue:
                    guard let loadedProductPlantEntity = productPlantEntity else {
                        return
                    }
                    
                    let controller = segue.destination as! PlantDetailViewController
                    controller.productPlant = loadedProductPlantEntity[indexPath.row]
                        
                case DetailViewController.saleSegue:
                    guard let loadedProductSalesDeliveryEntity = productSalesDeliveryEntity else {
                        return
                    }
                    
                    let controller = segue.destination as! SalesDetailViewController
                    controller.productSale = loadedProductSalesDeliveryEntity[indexPath.row]
                        
                default:
                    return
                }
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
            switch identifier {
                
            case DetailViewController.descriptionSegue:
                guard let loadedProductDescriptionEntity = productDescriptionEntity else {
                    return false
                }
                
                return isCellInSectionSelectable(loadedProductDescriptionEntity.count)
                
            case DetailViewController.plantSegue:
                guard let loadedProductPlantEntity = productPlantEntity else {
                    return false
                }
                
                return isCellInSectionSelectable(loadedProductPlantEntity.count)
                
            case DetailViewController.saleSegue:
                guard let loadedProductSalesDeliveryEntity = productSalesDeliveryEntity else {
                    return false
                }
                return isCellInSectionSelectable(loadedProductSalesDeliveryEntity.count)
                
            default:
                return false
            }
    }
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return productEntity != nil ? sectionTitles.count : 0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard productEntity != nil else {
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
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Optional unchaining ensures only to execute when the product was loaded
        if let loadedProduct = productEntity {

            // Depending on the section, different cells are created
            switch indexPath.section {
                
            // Basic Data Section
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ProductPropertyID", for: indexPath) as! FUITextFieldFormCell
                return cellForProductType(cell, indexPath: indexPath, currentEntity: loadedProduct)
                
            // Descriptions Section
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionID", for: indexPath) as! FUITextFieldFormCell
                return cellForDescriptionType(cell, indexPath: indexPath, currentEntity: productDescriptionEntity)

            // Plants Section
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: "PlantID", for: indexPath) as! FUITextFieldFormCell
                return cellForPlantType(cell, indexPath: indexPath, currentEntity: productPlantEntity)
                
            // Sales Section
            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: "SaleID", for: indexPath) as! FUITextFieldFormCell
                return cellForSalesType(cell, indexPath: indexPath, currentEntity: productSalesDeliveryEntity)
                
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
        let emptyCellContent: String = " "
        CellHelper.configureCell(emptyCell, emptyCellContent, emptyCellContent, hasDisclosure: false)
        
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
        
        let cellLabel: String? = (propertiesForProduct[indexPath.row]?.first?.key)!
        
        let property: Property = (propertiesForProduct[indexPath.row]?.first?.value)!
        let cellValue: String? = currentEntity.dataValue(for: property)?.toString()
                
        CellHelper.configureCell(cell, cellLabel, cellValue, hasDisclosure: false)

        return cell
    }
    
    /**
     *   Processes the TableView's cells with Description Entity related content. In the case, when no cells are available with Descriptions, a default will set, to indicate that no items for Descriptions are available. It is not possible to navigate into such an empty cell.
     *   - parameter cell: Cell from the Table View, which name and value are specified are going to be specified
     *   - parameter indexPath: The index for detecting the current processed row in the Table
     *   - returns: Specified cell with all required Description values
     */
    private func cellForDescriptionType(_ cell: FUITextFieldFormCell!,  indexPath: IndexPath, currentEntity: [AProductDescriptionType]?) -> FUITextFieldFormCell {
    
        guard let entityContent = currentEntity, !entityContent.isEmpty else {
            CellHelper.configureCell(cell, cellLabelForEmptyCell, cellValueForEmptyCell, hasDisclosure: false)
            return cell
        }
    
        let cellLabel: String? = entityContent[indexPath.row].productDescription
        let cellValue: String? = entityContent[indexPath.row].language
        
        CellHelper.configureCell(cell, cellLabel, cellValue, hasDisclosure: true)
                
        return cell
    }
    
    /**
     *   Processes the TableView's cells with Plant Entity related content. In the case, when no cells are available with Plants, a default will set, to indicate that no items for Plants are available. It is not possible to navigate into such an empty cell.
     *   - parameter cell: Cell from the Table View, which name and value are specified are going to be specified
     *   - parameter indexPath: The index for detecting the current processed row in the Table
     *   - returns: Specified cell with all required Plant values
     */
    private func cellForPlantType(_ cell: FUITextFieldFormCell!, indexPath: IndexPath, currentEntity: [AProductPlantType]?) -> FUITextFieldFormCell {
        
        guard let entityContent = currentEntity, !entityContent.isEmpty else {
            CellHelper.configureCell(cell, cellLabelForEmptyCell, cellValueForEmptyCell, hasDisclosure: false)
            return cell
        }
        
        let cellLabel: String? = entityContent[indexPath.row].plant
        let cellValue: String? = "\(entityContent[indexPath.row].maximumLotSizeQuantity!)"
            
        CellHelper.configureCell(cell, cellLabel, cellValue, hasDisclosure: true)
        
        return cell
    }
    
    /**
     *   Processes the TableView's cells with Sales Entity related content. In the case, when no cells are available with Sales, a default will set, to indicate that no items for Sales are available. It is not possible to navigate into such an empty cell.
     *   - parameter cell: Cell from the Table View, which name and value are specified are going to be specified
     *   - parameter indexPath: The index for detecting the current processed row in the Table
     *   - returns: Specified cell with all required Sales values
     */
    private func cellForSalesType(_ cell: FUITextFieldFormCell!,  indexPath: IndexPath, currentEntity: [AProductSalesDeliveryType]?) -> FUITextFieldFormCell {
                
        guard let entityContent = currentEntity, !entityContent.isEmpty else {
            CellHelper.configureCell(cell, cellLabelForEmptyCell, cellValueForEmptyCell, hasDisclosure: false)
            return cell
        }
        
        let cellLabel: String? = entityContent[indexPath.row].productSalesOrg
        let cellValue: String? = entityContent[indexPath.row].productSalesStatus!
            
        CellHelper.configureCell(cell, cellLabel, cellValue, hasDisclosure: true)
    
        return cell
    }
        
    // MARK: - CRUD Operations
    
    /**
     *   Triggers the CRUD Read Request for a specific selected Product.
     *   - parameter productId: Product entity key of the currently selected Product
     *   - parameter completionHandler: Closure Operations executed asynchronous
     */
    private func loadDetailData(productId: String, completionHandler: @escaping() -> Void){
        // Load Product API
        guard let loadApiProductSrvEntities = ServiceConfiguration.initApiProductService(controller: self) else {
            return
        }
        self.apiproductsrvEntities = loadApiProductSrvEntities
        
        self.requestEntitiesForSelectedProduct(productId: productId) { error in
            guard error == nil else {
                return
            }
            DispatchQueue.main.async() {
                completionHandler()
            }
        }
    }
    
    /**
     *   Executes the Read Requests, for all required entities for the selected Product. The affected entities are: (Language) Description, Plant and Sales.
     *   - parameter productId: Filters the Query Request by the selected Product ID
     *   - parameter completionHandler: Closure for Error Handling
     */
    private func requestEntitiesForSelectedProduct(productId: String, completionHandler: @escaping (Error?) -> Void) {
        
        // Caches the retrieved data in temporary variables
        var productEntity: AProductType?
        
        // Define the query, which retrieve only the required properties, filtered on a certain product
        let selectedProductQuery = QueryDefinitionHelper.initFilteredProductQuery(queryFilterForProductId: productId)
        
        self.queriesTerminated.enter()
        
        self.apiproductsrvEntities.fetchAProduct(matching: selectedProductQuery) { response, error in
            guard let loadedEntity = response else {
                completionHandler(error!)
                return
            }
            productEntity = loadedEntity.first!
            self.queriesTerminated.leave()
        }
        
        self.queriesTerminated.notify(queue: .main) {
            self.productEntity = productEntity
            // Navigate to the Entities, which were expanded from the Product Entity
            self.productDescriptionEntity = productEntity.map { $0.toDescription }
            self.productPlantEntity = productEntity.map { $0.toPlant }
            self.productSalesDeliveryEntity = productEntity.map { $0.toSalesDelivery }
            
            self.initializeSections()
            self.tableView.reloadData()
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
        
        // Product Details
        let section1: SectionHandler = SectionHandler(numberOfCells: self.propertiesForProduct.count, isSectionExpanded: true, delegate: self)
        
        // The other sections are collapsed by default and require for an aditional
        // treatment, since they are based on loaded data from the backend (unchaining of an optional)
        
        // Descriptions for Product listed
        var section2: SectionHandler = SectionHandler(numberOfCells: 0, isSectionExpanded: false, delegate: self)
        // Plants for Product listed
        var section3: SectionHandler = SectionHandler(numberOfCells: 0, isSectionExpanded: false, delegate: self)
        // Sales for Product listed
        var section4: SectionHandler = SectionHandler(numberOfCells: 0, isSectionExpanded: false, delegate: self)
        
        if let loadedProductDescriptionEntity = productDescriptionEntity {
            section2 = SectionHandler(numberOfCells: (loadedProductDescriptionEntity.count), isSectionExpanded: false, delegate: self)
        }

        if let loadedProductPlantEntity = productPlantEntity {
            section3 = SectionHandler(numberOfCells: (loadedProductPlantEntity.count), isSectionExpanded: false, delegate: self)
        }
        if let loadedProductSalesDeliveryEntity = productSalesDeliveryEntity {
            section4 = SectionHandler(numberOfCells: (loadedProductSalesDeliveryEntity.count), isSectionExpanded: false, delegate: self)
        }
        
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
