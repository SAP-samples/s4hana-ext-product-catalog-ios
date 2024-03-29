//
// SAPFioriLoadingIndicator.swift
// productmasterapp
//
// Created by SAP Business Technology Platform (BTP) SDK for iOS Assistant application on 05/02/18
//

import Foundation
import SAPFiori

protocol SAPFioriLoadingIndicator: class {
    var loadingIndicator: FUILoadingIndicatorView? { get set }
}

extension SAPFioriLoadingIndicator where Self: UIViewController {

    func showFioriLoadingIndicator(_ message: String = "") {
        OperationQueue.main.addOperation({
            let indicator = FUILoadingIndicatorView(frame: self.view.frame)
            indicator.text = message
            self.view.addSubview(indicator)
            indicator.show()
            self.loadingIndicator = indicator
        })
    }

    func hideFioriLoadingIndicator() {
        OperationQueue.main.addOperation({
            guard let loadingIndicator = self.loadingIndicator else {
                return
            }
            loadingIndicator.dismiss()
        })
    }
}
