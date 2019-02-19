import Foundation
import SAPFiori


class CustomCellCreator: UITableViewController {
    
    /**
     *   Creates a TableView cell of the type FUISimplePropertyFormCell and assigns content to cell's filed name and value.
     *   - parameter tableView: The Table View, which is intended to contain the created cell
     *   - parameter indexPath: The row for the cell in the Table View
     *   - parameter cellId: Cell Identification, which is defined for the Prototype Cell in the Storyboard
     *   - parameter cellKeyName: Value for the cell's name field
     *   - parameter cellValue: Value for the cell's value field
     *   - return: Created cell with assigned content for the name and value fields
     */
    static func createTextFieldFormCell(_ tableView: UITableView, indexPath: IndexPath, cellId: String, cellKeyName : String, cellValue: String) -> FUITextFieldFormCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath as IndexPath) as! FUITextFieldFormCell
        
        cell.isEditable = false
        cell.keyName = cellKeyName
        cell.value = cellValue
        
        return cell
    }
    
    /**
     *   Creates a TableView cell of the type FUIKeyValueFormCell and assigns content to cell's filed name and value.
     *   - parameter tableView: The Table View, which is intended to contain the created cell
     *   - parameter indexPath: The row for the cell in the Table View
     *   - parameter cellId: Cell Identification, which is defined for the Prototype Cell in the Storyboard
     *   - parameter cellKeyName: Value for the cell's name field
     *   - parameter cellValue: Value for the cell's value field
     *   - return: Created cell with assigned content for the name and value fields
     */
    static func createKeyValueFormCell(_ tableView: UITableView, indexPath: IndexPath, cellId: String, cellKeyName : String, cellValue: String) -> FUIKeyValueFormCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath as IndexPath) as! FUIKeyValueFormCell
        
        cell.isEditable = false
        cell.keyName = cellKeyName
        cell.value = cellValue
        
        return cell
    }
    
}
