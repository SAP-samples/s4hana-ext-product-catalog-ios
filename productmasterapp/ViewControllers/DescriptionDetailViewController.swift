import UIKit
import SAPFiori
import SAPOData

class DescriptionDetailViewController: UITableViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var descriptionTableView: UITableView!
        
    // MARK: - UI Related Properties
    
    /**
     *   Definition of the cells Re-User Identifiers from the Storyboard. This enum is used,
     *   to distinguish which cell type is required for which content.
     */
    enum CellTypeForCellIdentifier: String {
        case simplePropertyForm = "SimpleDecriptionCell"
        case keyValueForm = "LargeDescriptionCell"
    }
    
    private let cellsHeight: CGFloat = 55
    private let descriptionCellHeight: CGFloat = 85
    
    // Define the labeling and content of the cells
    private let propertiesForDescriptionTable: [Int: [String: Property]] = [0: ["Product": AProductDescriptionType.product],
                                                                            1: ["Language": AProductDescriptionType.language],
                                                                            2: ["Description": AProductDescriptionType.productDescription]]
    
    // Define the cells type
    private let cellTypeForDescriptionProperty: [Int: CellTypeForCellIdentifier] = [0: .simplePropertyForm,
                                                                                    1: .simplePropertyForm,
                                                                                    2: .keyValueForm]
    
    // MARK: - Properties
    
    var productDescription: AProductDescriptionType?
    
    // MARK: - View Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.descriptionTableView.rowHeight = UITableView.automaticDimension
        self.descriptionTableView.estimatedRowHeight = cellsHeight
        
        self.tableView.backgroundColor = UIColor.groupTableViewBackground
        // Don't show empty cells at the end of the TableView
        descriptionTableView.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK:- Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return propertiesForDescriptionTable.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var keyName = " "
        var value = " "
        
        if let keyNameConent = propertiesForDescriptionTable[indexPath.row]?.first?.key {
            keyName = "\(keyNameConent)"
        }
        if let valueConent = productDescription?.dataValue(for: (propertiesForDescriptionTable[indexPath.row]?.first?.value)!) {
            value = "\(valueConent)"
        }
        
        switch cellTypeForDescriptionProperty[indexPath.row] {
        case .simplePropertyForm?:
            return CellHelper.createTextFieldFormCell(tableView,
                                                      indexPath: indexPath,
                                                      cellId: CellTypeForCellIdentifier.simplePropertyForm.rawValue,
                                                      cellKeyName: keyName,
                                                      cellValue: value)
        case .keyValueForm?:
            return CellHelper.createKeyValueFormCell(tableView,
                                                     indexPath: indexPath,
                                                     cellId: CellTypeForCellIdentifier.keyValueForm.rawValue,
                                                     cellKeyName: keyName,
                                                     cellValue: value)
        default:
            print("Description cell creation failed")
        }
        // Return an empty cell
        return FUITextFieldFormCell()
    }
}
