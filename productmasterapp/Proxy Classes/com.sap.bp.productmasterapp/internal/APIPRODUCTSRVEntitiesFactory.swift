// # Proxy Compiler 19.9.0-197466-20190927

import Foundation
import SAPOData

internal class APIPRODUCTSRVEntitiesFactory {
    static func registerAll() throws {
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType.registerFactory(ObjectFactory.with(create: { AProductBasicTextType(withDefaults: false) }, createWithDecoder: { d in try AProductBasicTextType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.registerFactory(ObjectFactory.with(create: { AProductDescriptionType(withDefaults: false) }, createWithDecoder: { d in try AProductDescriptionType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.registerFactory(ObjectFactory.with(create: { AProductPlantType(withDefaults: false) }, createWithDecoder: { d in try AProductPlantType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.registerFactory(ObjectFactory.with(create: { AProductSalesDeliveryType(withDefaults: false) }, createWithDecoder: { d in try AProductSalesDeliveryType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.registerFactory(ObjectFactory.with(create: { AProductType(withDefaults: false) }, createWithDecoder: { d in try AProductType(from: d) }))
       
        APIPRODUCTSRVEntitiesStaticResolver.resolve()
    }
}
