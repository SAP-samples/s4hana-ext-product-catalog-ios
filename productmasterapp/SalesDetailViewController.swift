import UIKit
import SAPFiori
import SAPOData

class SalesDetailViewController: UITableViewController {
    
    // MARK: - Outlets
    @IBOutlet var salesTableView: UITableView!
    
    // MARK: - UI Related Properties
    
    private let salesPrototypeCellId = "SalesCell"
    private let cellsHeight: CGFloat = 55
    
    private let propertiesForSaleTable: [Int: [String: Property]] = [0: ["Product Distribution Channel": AProductSalesDeliveryType.productDistributionChnl], 1: ["Product Hierarchy": AProductSalesDeliveryType.productHierarchy], 2: ["Product SalesOrg.": AProductSalesDeliveryType.productSalesOrg], 3: ["Product Sales Status": AProductSalesDeliveryType.productSalesStatus], 4: ["Product Sales Status Validity Date": AProductSalesDeliveryType.productSalesStatusValidityDate], 5: ["Sales Measure Unit": AProductSalesDeliveryType.salesMeasureUnit], 6: ["Supplying Plant": AProductSalesDeliveryType.supplyingPlant], 7: ["Delivery Quantity": AProductSalesDeliveryType.deliveryQuantity], 8: ["Delivery Quantity Unit": AProductSalesDeliveryType.deliveryQuantityUnit], 9: ["Fifth Sales Spec. Product Group": AProductSalesDeliveryType.fifthSalesSpecProductGroup]]
    
    // MARK: - Properties
    
    var productSale: AProductSalesDeliveryType?
    
    // MARK: - View Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.salesTableView.rowHeight = UITableViewAutomaticDimension
        self.salesTableView.estimatedRowHeight = cellsHeight
        
        self.tableView.backgroundColor = UIColor.groupTableViewBackground
        // Don't show empty cells at the end of the TableView
        salesTableView.tableFooterView = UIView()
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
        return propertiesForSaleTable.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var keyName = " "
        var value = " "
        
        if let keyNameConent = propertiesForSaleTable[indexPath.row]?.first?.key {
            keyName = "\(keyNameConent)"
        }
        if let valueConent = productSale?.dataValue(for: (propertiesForSaleTable[indexPath.row]?.first?.value)!) {
            value = "\(valueConent)"
        }
        
        return CustomCellCreator.createTextFieldFormCell(tableView, indexPath: indexPath, cellId: salesPrototypeCellId, cellKeyName: keyName, cellValue: value)
    }
}
