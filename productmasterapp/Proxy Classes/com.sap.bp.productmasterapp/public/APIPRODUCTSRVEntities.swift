// # Proxy Compiler 19.9.0-197466-20190927

import Foundation
import SAPOData

open class APIPRODUCTSRVEntities<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = APIPRODUCTSRVEntitiesMetadata.document
    }

    open func fetchAProduct(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AProductType] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AProductType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProduct(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AProductType]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProduct(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductBasicText(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AProductBasicTextType] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AProductBasicTextType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductBasicText), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProductBasicText(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AProductBasicTextType]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductBasicText(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductBasicTextType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductBasicTextType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductBasicTextType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductBasicText), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductBasicTextType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductBasicTextType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductBasicTextType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductBasicTextTypeWithKey(product: String?, language: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductBasicTextType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAProductBasicTextType(matching: var_query.withKey(AProductBasicTextType.key(product: product, language: language)), headers: headers, options: options)
    }

    open func fetchAProductBasicTextTypeWithKey(product: String?, language: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductBasicTextType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductBasicTextTypeWithKey(product: product, language: language, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductDescription(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AProductDescriptionType] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AProductDescriptionType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProductDescription(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AProductDescriptionType]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductDescription(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductDescriptionType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductDescriptionType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductDescriptionType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductDescriptionType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductDescriptionType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductDescriptionType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductDescriptionTypeWithKey(product: String?, language: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductDescriptionType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAProductDescriptionType(matching: var_query.withKey(AProductDescriptionType.key(product: product, language: language)), headers: headers, options: options)
    }

    open func fetchAProductDescriptionTypeWithKey(product: String?, language: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductDescriptionType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductDescriptionTypeWithKey(product: product, language: language, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlant(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AProductPlantType] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AProductPlantType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProductPlant(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AProductPlantType]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductPlant(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlantType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductPlantType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductPlantType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductPlantType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductPlantType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductPlantType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlantTypeWithKey(product: String?, plant: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductPlantType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAProductPlantType(matching: var_query.withKey(AProductPlantType.key(product: product, plant: plant)), headers: headers, options: options)
    }

    open func fetchAProductPlantTypeWithKey(product: String?, plant: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductPlantType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductPlantTypeWithKey(product: product, plant: plant, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesDelivery(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AProductSalesDeliveryType] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AProductSalesDeliveryType.array(from: self.executeQuery(var_query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAProductSalesDelivery(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AProductSalesDeliveryType]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductSalesDelivery(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesDeliveryType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductSalesDeliveryType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductSalesDeliveryType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductSalesDeliveryType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductSalesDeliveryType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductSalesDeliveryType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesDeliveryTypeWithKey(product: String?, productSalesOrg: String?, productDistributionChnl: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductSalesDeliveryType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAProductSalesDeliveryType(matching: var_query.withKey(AProductSalesDeliveryType.key(product: product, productSalesOrg: productSalesOrg, productDistributionChnl: productDistributionChnl)), headers: headers, options: options)
    }

    open func fetchAProductSalesDeliveryTypeWithKey(product: String?, productSalesOrg: String?, productDistributionChnl: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductSalesDeliveryType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductSalesDeliveryTypeWithKey(product: product, productSalesOrg: productSalesOrg, productDistributionChnl: productDistributionChnl, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }
    
    open func fetchAProductType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductType {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AProductType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAProductType(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductType(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductTypeWithKey(product: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AProductType {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAProductType(matching: var_query.withKey(AProductType.key(product: product)), headers: headers, options: options)
    }

    open func fetchAProductTypeWithKey(product: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AProductType?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAProductTypeWithKey(product: product, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open override var metadataLock: MetadataLock {
        return APIPRODUCTSRVEntitiesMetadata.lock
    }

    open override func refreshMetadata() throws {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        do {
            try ProxyInternal.refreshMetadataWithLock(service: self, fetcher: nil, options: APIPRODUCTSRVEntitiesMetadataParser.options, mergeAction: { APIPRODUCTSRVEntitiesMetadataChanges.merge(metadata: self.metadata) })
        }
    }
}
