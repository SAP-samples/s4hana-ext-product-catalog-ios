// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

public class APIPRODUCTSRVEntitiesMetadata {
    private static var document_: CSDLDocument = APIPRODUCTSRVEntitiesMetadata.resolve()

    public static var document: CSDLDocument {
        get {
            objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.self)
            defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.self) }
            do {
                return APIPRODUCTSRVEntitiesMetadata.document_
            }
        }
        set(value) {
            objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.self)
            defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.self) }
            do {
                APIPRODUCTSRVEntitiesMetadata.document_ = value
            }
        }
    }

    private static func resolve() -> CSDLDocument {
        try! APIPRODUCTSRVEntitiesFactory.registerAll()
        APIPRODUCTSRVEntitiesMetadataParser.parsed.hasGeneratedProxies = true
        return APIPRODUCTSRVEntitiesMetadataParser.parsed
    }

    public class EntityTypes {
        private static var aProductBasicTextType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductBasicTextType")

        private static var aProductDescriptionType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductDescriptionType")

        private static var aProductInspectionTextType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductInspectionTextType")

        private static var aProductPlantCostingType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantCostingType")

        private static var aProductPlantForecastingType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantForecastingType")

        private static var aProductPlantIntlTrdType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantIntlTrdType")

        private static var aProductPlantMRPAreaType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantMRPAreaType")

        private static var aProductPlantProcurementType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantProcurementType")

        private static var aProductPlantQualityMgmtType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantQualityMgmtType")

        private static var aProductPlantSalesType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantSalesType")

        private static var aProductPlantStorageType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantStorageType")

        private static var aProductPlantTextType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantTextType")

        private static var aProductPlantType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantType")

        private static var aProductProcurementType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductProcurementType")

        private static var aProductPurchaseTextType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPurchaseTextType")

        private static var aProductQualityMgmtType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductQualityMgmtType")

        private static var aProductSalesDeliveryType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesDeliveryType")

        private static var aProductSalesTaxType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesTaxType")

        private static var aProductSalesTextType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesTextType")

        private static var aProductSalesType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesType")

        private static var aProductStorageLocationType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductStorageLocationType")

        private static var aProductStorageType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductStorageType")

        private static var aProductSupplyPlanningType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductSupplyPlanningType")

        private static var aProductType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductType")

        private static var aProductUnitsOfMeasureEANType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductUnitsOfMeasureEANType")

        private static var aProductUnitsOfMeasureType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductUnitsOfMeasureType")

        private static var aProductWorkSchedulingType_: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductWorkSchedulingType")

        public static var aProductBasicTextType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType_ = value
                }
            }
        }

        public static var aProductDescriptionType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType_ = value
                }
            }
        }

        public static var aProductInspectionTextType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductInspectionTextType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductInspectionTextType_ = value
                }
            }
        }

        public static var aProductPlantCostingType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantCostingType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantCostingType_ = value
                }
            }
        }

        public static var aProductPlantForecastingType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantForecastingType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantForecastingType_ = value
                }
            }
        }

        public static var aProductPlantIntlTrdType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantIntlTrdType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantIntlTrdType_ = value
                }
            }
        }

        public static var aProductPlantMRPAreaType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantMRPAreaType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantMRPAreaType_ = value
                }
            }
        }

        public static var aProductPlantProcurementType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType_ = value
                }
            }
        }

        public static var aProductPlantQualityMgmtType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantQualityMgmtType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantQualityMgmtType_ = value
                }
            }
        }

        public static var aProductPlantSalesType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantSalesType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantSalesType_ = value
                }
            }
        }

        public static var aProductPlantStorageType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantStorageType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantStorageType_ = value
                }
            }
        }

        public static var aProductPlantTextType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantTextType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantTextType_ = value
                }
            }
        }

        public static var aProductPlantType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType_ = value
                }
            }
        }

        public static var aProductProcurementType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductProcurementType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductProcurementType_ = value
                }
            }
        }

        public static var aProductPurchaseTextType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPurchaseTextType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPurchaseTextType_ = value
                }
            }
        }

        public static var aProductQualityMgmtType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductQualityMgmtType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductQualityMgmtType_ = value
                }
            }
        }

        public static var aProductSalesDeliveryType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType_ = value
                }
            }
        }

        public static var aProductSalesTaxType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType_ = value
                }
            }
        }

        public static var aProductSalesTextType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTextType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTextType_ = value
                }
            }
        }

        public static var aProductSalesType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesType_ = value
                }
            }
        }

        public static var aProductStorageLocationType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType_ = value
                }
            }
        }

        public static var aProductStorageType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageType_ = value
                }
            }
        }

        public static var aProductSupplyPlanningType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType_ = value
                }
            }
        }

        public static var aProductType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType_ = value
                }
            }
        }

        public static var aProductUnitsOfMeasureEANType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductUnitsOfMeasureEANType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductUnitsOfMeasureEANType_ = value
                }
            }
        }

        public static var aProductUnitsOfMeasureType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductUnitsOfMeasureType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductUnitsOfMeasureType_ = value
                }
            }
        }

        public static var aProductWorkSchedulingType: EntityType {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType_ = value
                }
            }
        }
    }

    public class EntitySets {
        private static var aProduct_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_Product")

        private static var aProductBasicText_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductBasicText")

        private static var aProductDescription_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductDescription")

        private static var aProductInspectionText_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductInspectionText")

        private static var aProductPlant_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlant")

        private static var aProductPlantCosting_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantCosting")

        private static var aProductPlantForecasting_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantForecasting")

        private static var aProductPlantIntlTrd_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantIntlTrd")

        private static var aProductPlantMRPArea_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantMRPArea")

        private static var aProductPlantProcurement_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantProcurement")

        private static var aProductPlantQualityMgmt_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantQualityMgmt")

        private static var aProductPlantSales_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantSales")

        private static var aProductPlantStorage_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantStorage")

        private static var aProductPlantText_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantText")

        private static var aProductProcurement_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductProcurement")

        private static var aProductPurchaseText_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPurchaseText")

        private static var aProductQualityMgmt_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductQualityMgmt")

        private static var aProductSales_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductSales")

        private static var aProductSalesDelivery_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductSalesDelivery")

        private static var aProductSalesTax_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductSalesTax")

        private static var aProductSalesText_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductSalesText")

        private static var aProductStorage_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductStorage")

        private static var aProductStorageLocation_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductStorageLocation")

        private static var aProductSupplyPlanning_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductSupplyPlanning")

        private static var aProductUnitsOfMeasure_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductUnitsOfMeasure")

        private static var aProductUnitsOfMeasureEAN_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductUnitsOfMeasureEAN")

        private static var aProductWorkScheduling_: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductWorkScheduling")

        public static var aProduct: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct_ = value
                }
            }
        }

        public static var aProductBasicText: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductBasicText_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductBasicText_ = value
                }
            }
        }

        public static var aProductDescription: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription_ = value
                }
            }
        }

        public static var aProductInspectionText: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductInspectionText_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductInspectionText_ = value
                }
            }
        }

        public static var aProductPlant: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant_ = value
                }
            }
        }

        public static var aProductPlantCosting: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantCosting_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantCosting_ = value
                }
            }
        }

        public static var aProductPlantForecasting: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantForecasting_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantForecasting_ = value
                }
            }
        }

        public static var aProductPlantIntlTrd: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantIntlTrd_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantIntlTrd_ = value
                }
            }
        }

        public static var aProductPlantMRPArea: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantMRPArea_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantMRPArea_ = value
                }
            }
        }

        public static var aProductPlantProcurement: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantProcurement_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantProcurement_ = value
                }
            }
        }

        public static var aProductPlantQualityMgmt: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantQualityMgmt_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantQualityMgmt_ = value
                }
            }
        }

        public static var aProductPlantSales: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantSales_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantSales_ = value
                }
            }
        }

        public static var aProductPlantStorage: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantStorage_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantStorage_ = value
                }
            }
        }

        public static var aProductPlantText: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantText_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantText_ = value
                }
            }
        }

        public static var aProductProcurement: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductProcurement_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductProcurement_ = value
                }
            }
        }

        public static var aProductPurchaseText: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPurchaseText_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPurchaseText_ = value
                }
            }
        }

        public static var aProductQualityMgmt: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductQualityMgmt_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductQualityMgmt_ = value
                }
            }
        }

        public static var aProductSales: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSales_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSales_ = value
                }
            }
        }

        public static var aProductSalesDelivery: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery_ = value
                }
            }
        }

        public static var aProductSalesTax: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesTax_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesTax_ = value
                }
            }
        }

        public static var aProductSalesText: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesText_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesText_ = value
                }
            }
        }

        public static var aProductStorage: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorage_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorage_ = value
                }
            }
        }

        public static var aProductStorageLocation: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorageLocation_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorageLocation_ = value
                }
            }
        }

        public static var aProductSupplyPlanning: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSupplyPlanning_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSupplyPlanning_ = value
                }
            }
        }

        public static var aProductUnitsOfMeasure: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductUnitsOfMeasure_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductUnitsOfMeasure_ = value
                }
            }
        }

        public static var aProductUnitsOfMeasureEAN: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductUnitsOfMeasureEAN_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductUnitsOfMeasureEAN_ = value
                }
            }
        }

        public static var aProductWorkScheduling: EntitySet {
            get {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductWorkScheduling_
                }
            }
            set(value) {
                objc_sync_enter(APIPRODUCTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIPRODUCTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductWorkScheduling_ = value
                }
            }
        }
    }
}
