//
// productmasterapp
//
// Created by SAP Business Technology Platform (BTP) SDK for iOS Assistant application on 01/10/19
//

import Foundation
import SAPCommon
import SAPFiori
import SAPFioriFlows
import SAPFoundation
import SAPOData
import SAPOfflineOData

public class OfflineODataController {
    enum OfflineODataControllerError: Error {
        case cannotCreateOfflinePath
        case storeClosed
    }
    
    private let logger = Logger.shared(named: "OfflineODataController")
    var apiproductsrvEntities: APIPRODUCTSRVEntities<OfflineODataProvider>!
    private(set) var isOfflineStoreOpened = false
    
    public init() {}
    
    // MARK: - Public methods
    
    public static func offlineStorePath(for onboardingID: UUID) throws -> URL {
        guard let documentsFolderURL = FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).first else {
            throw OfflineODataControllerError.cannotCreateOfflinePath
        }
        let offlineStoreURL = documentsFolderURL.appendingPathComponent(onboardingID.uuidString)
        return offlineStoreURL
    }
    
    public static func removeStore(for onboardingID: UUID) throws {
        let offlinePath = try offlineStorePath(for: onboardingID)
        try OfflineODataProvider.clear(at: offlinePath, withName: nil)
    }
    
    // Read more about setting up an application with Offline Store: https://help.sap.com/viewer/fc1a59c210d848babfb3f758a6f55cb1/Latest/en-US/92f0a91d9d3148fd98b86082cf2cb1d5.html
    public func configureOData(sapURLSession: SAPURLSession, serviceRoot: URL, onboardingID: UUID) throws {
        let offlineParameters = OfflineODataParameters()
        offlineParameters.enableRepeatableRequests = true
        
        // Configure the path of the Offline Store
        let offlinePath = try OfflineODataController.offlineStorePath(for: onboardingID)
        try FileManager.default.createDirectory(at: offlinePath, withIntermediateDirectories: true)
        offlineParameters.storePath = offlinePath
        
        // Setup an instance of delegate. See sample code below for definition of OfflineODataDelegateSample class.
        let delegate = OfflineODataDelegateSample()
        let offlineODataProvider = try! OfflineODataProvider(serviceRoot: serviceRoot, parameters: offlineParameters, sapURLSession: sapURLSession, delegate: delegate)
        
        try configureDefiningQueries(on: offlineODataProvider)
        self.apiproductsrvEntities = APIPRODUCTSRVEntities(provider: offlineODataProvider)
    }
    
    public func openOfflineStore(synchronize: Bool, completionHandler: @escaping (Error?) -> Void) {
        if !self.isOfflineStoreOpened {
            // The OfflineODataProvider needs to be opened before performing any operations.
            self.apiproductsrvEntities.open { error in
                if let error = error {
                    self.logger.error("Could not open offline store.", error: error)
                    completionHandler(error)
                    return
                }
                self.isOfflineStoreOpened = true
                self.logger.info("Offline store opened.")
                if synchronize {
                    // You might want to consider doing the synchronization based on an explicit user interaction instead of automatically synchronizing during startup
                    self.synchronize(completionHandler: completionHandler)
                } else {
                    completionHandler(nil)
                }
            }
        } else if synchronize {
            // You might want to consider doing the synchronization based on an explicit user interaction instead of automatically synchronizing during startup
            self.synchronize(completionHandler: completionHandler)
        } else {
            completionHandler(nil)
        }
    }
    
    public func closeOfflineStore() {
        if self.isOfflineStoreOpened {
            do {
                // the Offline store should be closed when it is no longer used.
                try self.apiproductsrvEntities.close()
                self.isOfflineStoreOpened = false
            } catch {
                self.logger.error("Offline Store closing failed.")
            }
        }
        self.logger.info("Offline Store closed.")
    }
    
    // You can read more about data synchnonization: https://help.sap.com/viewer/fc1a59c210d848babfb3f758a6f55cb1/Latest/en-US/59ae11dc4df345bc8073f9da45170706.html
    public func synchronize(completionHandler: @escaping (Error?) -> Void) {
        if !self.isOfflineStoreOpened {
            self.logger.error("Offline Store is still closed")
            completionHandler(OfflineODataControllerError.storeClosed)
            return
        }
        self.uploadOfflineStore { error in
            if let error = error {
                completionHandler(error)
                return
            }
            self.downloadOfflineStore { error in
                completionHandler(error)
            }
        }
    }
    
    // MARK: - Private methods
    
    // Read more about Defining Queries: https://help.sap.com/viewer/fc1a59c210d848babfb3f758a6f55cb1/Latest/en-US/2235da24931b4be69ad0ada82873044e.html
    private func configureDefiningQueries(on offlineODataProvider: OfflineODataProvider) throws {
        let descriptionQuery = DataQuery().from(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription).selectAll()
        let plantQuery = DataQuery().from(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant).selectAll()
        let salesQuery = DataQuery().from(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery).selectAll()
        
        do {
            try offlineODataProvider.add(
                definingQuery: OfflineODataDefiningQuery(
                    name: "ProductQuery",
                    query: DataQuery()
                        .from(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct)
                        .expand(AProductType.toDescription, withQuery: descriptionQuery)
                        .expand(AProductType.toPlant, withQuery: plantQuery)
                        .expand(AProductType.toSalesDelivery, withQuery: salesQuery),
                    automaticallyRetrievesStreams: false))
            
        } catch {
            self.logger.error("Failed to add defining query for Offline Store initialization", error: error)
            throw error
        }
    }
    
    private func downloadOfflineStore(completionHandler: @escaping (Error?) -> Void) {
        // the download function updates the client’s offline store from the backend.
        self.apiproductsrvEntities.download { error in
            if let error = error {
                self.logger.error("Offline Store download failed", error: error)
            } else {
                self.logger.info("Offline Store successfully downloaded")
            }
            completionHandler(error)
        }
    }
    
    private func uploadOfflineStore(completionHandler: @escaping (Error?) -> Void) {
        // the upload function updates the backend from the client’s offline store.
        self.apiproductsrvEntities.upload { error in
            if let error = error {
                self.logger.error("Offline Store upload failed.", error: error)
                completionHandler(error)
                return
            }
            self.logger.info("Offline Store successfully uploaded.")
            completionHandler(nil)
        }
    }
}

class OfflineODataDelegateSample: OfflineODataProviderDelegate {
    private let logger = Logger.shared(named: "AppDelegateLogger")
    
    func offlineODataProvider(_: OfflineODataProvider, didUpdateOpenProgress progress: OfflineODataProviderOperationProgress) {
        self.logger.info("openProgress: \(progress.defaultMessage)")
    }
    
    func offlineODataProvider(_: OfflineODataProvider, didUpdateDownloadProgress progress: OfflineODataProviderDownloadProgress) {
        self.logger.info("downloadProgress: \(progress.defaultMessage)")
    }
    
    func offlineODataProvider(_: OfflineODataProvider, didUpdateUploadProgress progress: OfflineODataProviderOperationProgress) {
        self.logger.info("uploadProgress: \(progress.defaultMessage)")
    }
    
    func offlineODataProvider(_: OfflineODataProvider, requestDidFail request: OfflineODataFailedRequest) {
        self.logger.info("requestFailed: \(request.httpStatusCode)")
    }
    
    func offlineODataProvider(_: OfflineODataProvider, didUpdateSendStoreProgress progress: OfflineODataProviderOperationProgress) {
        self.logger.info("sendStoreProgress: \(progress.defaultMessage)")
    }
}
