import Foundation

/**
 *  Helper, which enables to access the Data Access Configuration defined in the ConfigurationProvider.plist
 */
class ServiceConfiguration {
    
    private static var serviceConfiguration = ServiceConfiguration()
    
    private var root: NSDictionary!
    
    private init() {
        let plistPath = Bundle.main.path(forResource: "ConfigurationProvider", ofType: "plist")!
        root = NSDictionary(contentsOfFile: plistPath)
    }
    
    public static func getHostUrl() -> URL {
        let httpProtocol = serviceConfiguration.root.value(forKey: "protocol") as! String
        let host = serviceConfiguration.root.value(forKey: "host")!
        return URL(string: "\(httpProtocol)://\(host)")!
    }
    
    public static func getScpAppId() -> String {
        let id = serviceConfiguration.root.value(forKey: "scpAppId") as! String
        return id
    }
    
    public static func getMobileDestinationId() -> String {
        let id = serviceConfiguration.root.value(forKey: "scpMobileDestination") as! String
        return id
    }
}
