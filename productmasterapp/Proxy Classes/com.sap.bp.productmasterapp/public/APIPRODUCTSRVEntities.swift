// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class APIPRODUCTSRVEntities<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = APIPRODUCTSRVEntitiesMetadata.document
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProduct")
    open func aProduct(query: DataQuery = DataQuery()) throws -> Array<AProductType> {
        return try self.fetchAProduct(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProduct")
    open func aProduct(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductType>?, Error?) -> Void) {
        self.fetchAProduct(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductDescription")
    open func aProductDescription(query: DataQuery = DataQuery()) throws -> Array<AProductDescriptionType> {
        return try self.fetchAProductDescription(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductDescription")
    open func aProductDescription(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductDescriptionType>?, Error?) -> Void) {
        self.fetchAProductDescription(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductPlant")
    open func aProductPlant(query: DataQuery = DataQuery()) throws -> Array<AProductPlantType> {
        return try self.fetchAProductPlant(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductPlant")
    open func aProductPlant(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductPlantType>?, Error?) -> Void) {
        self.fetchAProductPlant(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }
    
    @available(swift, deprecated: 4.0, renamed: "fetchAProductSalesDelivery")
    open func aProductSalesDelivery(query: DataQuery = DataQuery()) throws -> Array<AProductSalesDeliveryType> {
        return try self.fetchAProductSalesDelivery(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductSalesDelivery")
    open func aProductSalesDelivery(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductSalesDeliveryType>?, Error?) -> Void) {
        self.fetchAProductSalesDelivery(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    open func fetchAProduct(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<AProductType> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try AProductType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProduct(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<AProductType>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<AProductType> = try self.fetchAProduct(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductDescription(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<AProductDescriptionType> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try AProductDescriptionType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProductDescription(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<AProductDescriptionType>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<AProductDescriptionType> = try self.fetchAProductDescription(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductDescriptionType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductDescriptionType {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductDescriptionType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductDescriptionType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductDescriptionType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: AProductDescriptionType = try self.fetchAProductDescriptionType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlant(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<AProductPlantType> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try AProductPlantType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProductPlant(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<AProductPlantType>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<AProductPlantType> = try self.fetchAProductPlant(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlantType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductPlantType {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductPlantType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductPlantType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductPlantType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: AProductPlantType = try self.fetchAProductPlantType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesDelivery(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<AProductSalesDeliveryType> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try AProductSalesDeliveryType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProductSalesDelivery(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<AProductSalesDeliveryType>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<AProductSalesDeliveryType> = try self.fetchAProductSalesDelivery(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesDeliveryType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductSalesDeliveryType {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductSalesDeliveryType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductSalesDeliveryType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductSalesDeliveryType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: AProductSalesDeliveryType = try self.fetchAProductSalesDeliveryType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }
    
    open func fetchAProductType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductType {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: AProductType = try self.fetchAProductType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open override func refreshMetadata() throws {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        do {
            try ProxyInternal.refreshMetadata(service: self, fetcher: nil, options: APIPRODUCTSRVEntitiesMetadataParser.options)
            APIPRODUCTSRVEntitiesMetadataChanges.merge(metadata: self.metadata)
        }
    }
}
