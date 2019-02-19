import UIKit
import SAPFiori

protocol SectionButtonPressedDelegate {
    func expandCollapseStatusUpdate(isSectionExpanded: Bool)
}

class SectionTableViewCell: UITableViewHeaderFooterView {

    // MARK: - Outlets
    
    @IBOutlet var sectionTitle: UILabel!
    @IBOutlet var sectionButton: UIButton!
    
    // MARK: - Properties
    
    var delegate: SectionButtonPressedDelegate?
    var isExpanded: Bool = false
    
    // MARK: - UI Related Properties
    
    let expandIcon: UIImage = FUIIconLibrary.onboarding.scan.controlExpand
    let collapseIcon: UIImage = FUIIconLibrary.onboarding.scan.controlCollapse
        
    // MARK - View Configuration
    
    /**
     *   Handles the update of the expand status and the Icon, which indicates the Section as expanded or collapsed.
     *   - parameter isExpanded: Status, whether the Section is expanded or not
     */
    func updateView(isExpanded: Bool) {
        self.isExpanded = isExpanded
        isExpanded == true ? sectionButton.setImage(expandIcon, for: .normal) : sectionButton.setImage(collapseIcon, for: .normal)
    }
    
    // MARK: - Actions

    /**
     *   Action for the Section Button which toggles the expand and collapse of the section.
     *   - parameter sender: Button Object of the Action
     */
    @IBAction func doExpandCollapse(_ sender: Any) {
        // Invert the isExpanded status on Button action in order change the Button Icon
        isExpanded = !isExpanded
        updateView(isExpanded: isExpanded)
        // Forward the status change to the SectionHandler
        delegate?.expandCollapseStatusUpdate(isSectionExpanded: isExpanded)
    }
}
