import UIKit
import SAPFiori
import SAPOData

class PlantDetailViewController: UITableViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var plantsTableView: UITableView!
    
    // MARK: - Properties
    
    var productPlant: AProductPlantType?
    
    // MARK: - UI Related Properties
    
    private let plantPrototypeCellId = "PlantCell"
    private let cellsHeight: CGFloat = 55
    
    // Define the labeling and content of the cells
    private let propertiesForPlantTable: [Int: [String: Property]] = [0: ["Plant": AProductPlantType.plant],
                                                                      1: ["Product": AProductPlantType.product],
                                                                      2: ["Profit Center": AProductPlantType.profitCenter],
                                                                      3: ["Purchasing Group": AProductPlantType.purchasingGroup],
                                                                      4: ["Procurement Type": AProductPlantType.procurementType],
                                                                      5: ["Maintenance Status Name": AProductPlantType.maintenanceStatusName],
                                                                      6: ["Minimum Lot Size Quantity": AProductPlantType.maximumLotSizeQuantity],
                                                                      7: ["Production Inventory Managed Loc": AProductPlantType.productionInvtryManagedLoc],
                                                                      8: ["Stock In Transfer Quantity": AProductPlantType.stockInTransferQuantity],
                                                                      9: ["Stock In Transit Quantity": AProductPlantType.stockInTransitQuantity],
                                                                      10: ["Period Type": AProductPlantType.periodType],
                                                                      11: ["Fiscal Month Current Period": AProductPlantType.fiscalMonthCurrentPeriod],
                                                                      12: ["Fiscal Year Current Period": AProductPlantType.fiscalYearCurrentPeriod],
                                                                      13: ["MRP Responsible": AProductPlantType.mrpResponsible],
                                                                      14: ["MRP Type": AProductPlantType.mrpType]]
    
    // MARK: - View Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.plantsTableView.rowHeight = UITableView.automaticDimension
        self.plantsTableView.estimatedRowHeight = cellsHeight
        
        self.tableView.backgroundColor = UIColor.groupTableViewBackground
        // Don't show empty cells at the end of the TableView
        plantsTableView.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK:- Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return propertiesForPlantTable.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var keyName = " "
        var value = " "
        
        if let keyNameConent = propertiesForPlantTable[indexPath.row]?.first?.key {
            keyName = "\(keyNameConent)"
        }
        if let valueConent = productPlant?.dataValue(for: (propertiesForPlantTable[indexPath.row]?.first?.value)!) {
            value = "\(valueConent)"
        }

        return CellHelper.createTextFieldFormCell(tableView, indexPath: indexPath, cellId: plantPrototypeCellId, cellKeyName: keyName, cellValue: value)
    }
}
