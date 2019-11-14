// # Proxy Compiler 19.9.0-197466-20190927

import Foundation
import SAPOData

internal class APIPRODUCTSRVEntitiesMetadataParser {
    internal static let options: Int = (CSDLOption.allowCaseConflicts | CSDLOption.disableFacetWarnings | CSDLOption.disableNameValidation | CSDLOption.processMixedVersions | CSDLOption.retainOriginalText | CSDLOption.ignoreAllReferences | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = APIPRODUCTSRVEntitiesMetadataParser.parse()

    static func parse() -> CSDLDocument {
        let parser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = APIPRODUCTSRVEntitiesMetadataParser.options
        let metadata = parser.parseInProxy(APIPRODUCTSRVEntitiesMetadataText.xml, url: "API_PRODUCT_SRV")
        metadata.proxyVersion = "19.9.0-197466-20190927"
        return metadata
    }
}
