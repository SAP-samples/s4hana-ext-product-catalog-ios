import Foundation
import UIKit

protocol RefreshSectionViewDelegate {
    func refreshViewOnExpandCollapseAction()
}

class SectionHandler: SectionButtonPressedDelegate {
    
    private static let indicatePlaceholderCell: Int = 1
    private static let indicateCollapsedSection: Int = 0
    
    var delegate: RefreshSectionViewDelegate?
    
    var numberOfCells: Int!
    var isSectionExpanded: Bool!
    let sectionCell: SectionTableViewCell?
    
    /**
     *   Creates and initializes the Section View cell.
     *   - parameter numberOfCells: The number of the number of cells, represented in this section
     *   - parameter isSectionExpanded: Status, if the section, represented by this handler is expanded or collapsed
     *   - parameter delegate: Delegation that allows to update the UI View, which is using the this section
     */
    init(numberOfCells: Int, isSectionExpanded: Bool, delegate: RefreshSectionViewDelegate) {
        self.delegate = delegate
        self.isSectionExpanded = isSectionExpanded
        self.sectionCell = Bundle.main.loadNibNamed("SectionTableViewCell", owner: DetailViewController.self, options: nil)?.first as? SectionTableViewCell
        self.sectionCell!.updateView(isExpanded: self.isSectionExpanded)
        self.sectionCell!.reloadInputViews()
        self.numberOfCells = numberOfCells
        self.sectionCell!.delegate = self
    }
    
    func getCell() -> SectionTableViewCell{
        return sectionCell!
    }
    
    /**
     *   Forwards the status if the cell is expanded or collapsed to the Table View which contains the Section. Updates the Table View to perform an expand or collapse for the newly set status.
     *   - parameter isSectionExpanded: Current cells expand/collapse status
     */
    func expandCollapseStatusUpdate(isSectionExpanded: Bool) {
        self.isSectionExpanded = isSectionExpanded
        // Refresh the DetailView in order to execute an expand or collapse of a section
        delegate?.refreshViewOnExpandCollapseAction()
    }
    
    /**
     *   Detects the amount of Cells, shown for the Section. When the Section is collapsed, no Cells are shown. When the Section has no Cells, a Placeholder will be shown.
     */
    func calculateSectionSize() -> Int {
        if isSectionExpanded {
            if numberOfCells > 0 {
                // Return all the row of the section
                return numberOfCells
            } else {
                // Show the placeholder row, which indicates that the section has no items
                return SectionHandler.indicatePlaceholderCell
            }
        }
        return SectionHandler.indicateCollapsedSection
    }
}
