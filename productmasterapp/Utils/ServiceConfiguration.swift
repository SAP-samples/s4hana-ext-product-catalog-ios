import Foundation
import SAPFioriFlows
import SAPOfflineOData

/**
 *  Helper, which enables to access SAP Business Technology Platform (BTP) related ressources
 */
class ServiceConfiguration {
    
    private static var serviceConfiguration = ServiceConfiguration()
    
    private var root: NSDictionary!
    
    private init() {
        let plistPath = Bundle.main.path(forResource: "ConfigurationProvider", ofType: "plist")!
        root = NSDictionary(contentsOfFile: plistPath)
    }
    
    public static func getHostUrlWithDestiniation() -> URL {
        let httpProtocol = serviceConfiguration.root.value(forKey: "protocol") as! String
        let host = serviceConfiguration.root.value(forKey: "host")!
        let destination = serviceConfiguration.root.value(forKey: "scpMobileDestination") as! String
        return URL(string: "\(httpProtocol)://\(host)/\(destination)")!
    }
    
    public static func getScpAppId() -> String {
        let scpAppId = serviceConfiguration.root.value(forKey: "scpAppId") as! String
        return scpAppId
    }
    
    public static func getScpDestinationName() -> String {
        let scpMobileDestination = serviceConfiguration.root.value(forKey: "scpMobileDestination") as! String
        return scpMobileDestination
    }
    
    /// Initilailze Product API Service
    public static func initApiProductService(controller: UITableViewController) -> APIPRODUCTSRVEntities<OfflineODataProvider>? {
        guard let apiproductsrvEntities = OnboardingSessionManager.shared.onboardingSession?.odataController.apiproductsrvEntities
            else {
                AlertHelper.displayAlert(with: "OData service is not reachable, please onboard again.", error: nil, viewController: controller)
                return nil
        }
        return apiproductsrvEntities
    }
}
