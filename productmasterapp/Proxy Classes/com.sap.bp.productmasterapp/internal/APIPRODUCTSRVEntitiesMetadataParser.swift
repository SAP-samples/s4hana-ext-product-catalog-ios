// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

internal class APIPRODUCTSRVEntitiesMetadataParser {
    internal static let options: Int = (CSDLOption.allowCaseConflicts | CSDLOption.disableFacetWarnings | CSDLOption.disableNameValidation | CSDLOption.processMixedVersions | CSDLOption.retainOriginalText | CSDLOption.ignoreAllReferences | CSDLOption.ignoreUndefinedTerms)
    
    internal static let parsed: CSDLDocument = APIPRODUCTSRVEntitiesMetadataParser.parse()
    
    static func parse() -> CSDLDocument {
        let parser: CSDLParser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = APIPRODUCTSRVEntitiesMetadataParser.options
        let metadata: CSDLDocument = parser.parseInProxy(APIPRODUCTSRVEntitiesMetadataText.xml, url: "API_PRODUCT_SRV")
        metadata.proxyVersion = "18.9.4-973a4d-20181128"
        return metadata
    }
}
