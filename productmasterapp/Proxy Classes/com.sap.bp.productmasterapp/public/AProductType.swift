// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class AProductType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var product_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Product")

    private static var productType_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductType")

    private static var crossPlantStatus_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantStatus")

    private static var crossPlantStatusValidityDate_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantStatusValidityDate")

    private static var creationDate_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CreationDate")

    private static var createdByUser_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CreatedByUser")

    private static var lastChangeDate_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangeDate")

    private static var lastChangedByUser_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangedByUser")

    private static var lastChangeDateTime_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangeDateTime")

    private static var isMarkedForDeletion_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsMarkedForDeletion")

    private static var productOldID_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductOldID")

    private static var grossWeight_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "GrossWeight")

    private static var purchaseOrderQuantityUnit_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "PurchaseOrderQuantityUnit")

    private static var sourceOfSupply_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SourceOfSupply")

    private static var weightUnit_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WeightUnit")

    private static var netWeight_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "NetWeight")

    private static var countryOfOrigin_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CountryOfOrigin")

    private static var competitorID_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CompetitorID")

    private static var productGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductGroup")

    private static var baseUnit_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "BaseUnit")

    private static var itemCategoryGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ItemCategoryGroup")

    private static var productHierarchy_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductHierarchy")

    private static var division_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Division")

    private static var varblPurOrdUnitIsActive_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "VarblPurOrdUnitIsActive")

    private static var volumeUnit_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "VolumeUnit")

    private static var materialVolume_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaterialVolume")

    private static var anpCode_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ANPCode")

    private static var brand_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Brand")

    private static var procurementRule_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProcurementRule")

    private static var validityStartDate_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ValidityStartDate")

    private static var lowLevelCode_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LowLevelCode")

    private static var prodNoInGenProdInPrepackProd_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProdNoInGenProdInPrepackProd")

    private static var serialIdentifierAssgmtProfile_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialIdentifierAssgmtProfile")

    private static var sizeOrDimensionText_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SizeOrDimensionText")

    private static var industryStandardName_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IndustryStandardName")

    private static var productStandardID_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductStandardID")

    private static var internationalArticleNumberCat_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "InternationalArticleNumberCat")

    private static var productIsConfigurable_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductIsConfigurable")

    private static var isBatchManagementRequired_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsBatchManagementRequired")

    private static var externalProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ExternalProductGroup")

    private static var crossPlantConfigurableProduct_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantConfigurableProduct")

    private static var serialNoExplicitnessLevel_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialNoExplicitnessLevel")

    private static var productManufacturerNumber_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductManufacturerNumber")

    private static var manufacturerNumber_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ManufacturerNumber")

    private static var manufacturerPartProfile_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ManufacturerPartProfile")

    private static var changeNumber_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ChangeNumber")

    private static var materialRevisionLevel_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaterialRevisionLevel")

    private static var handlingIndicator_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HandlingIndicator")

    private static var warehouseProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WarehouseProductGroup")

    private static var warehouseStorageCondition_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WarehouseStorageCondition")

    private static var standardHandlingUnitType_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "StandardHandlingUnitType")

    private static var serialNumberProfile_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialNumberProfile")

    private static var adjustmentProfile_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "AdjustmentProfile")

    private static var preferredUnitOfMeasure_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "PreferredUnitOfMeasure")

    private static var isPilferable_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsPilferable")

    private static var isRelevantForHzdsSubstances_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsRelevantForHzdsSubstances")

    private static var quarantinePeriod_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QuarantinePeriod")

    private static var timeUnitForQuarantinePeriod_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "TimeUnitForQuarantinePeriod")

    private static var qualityInspectionGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QualityInspectionGroup")

    private static var authorizationGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "AuthorizationGroup")

    private static var handlingUnitType_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HandlingUnitType")

    private static var hasVariableTareWeight_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HasVariableTareWeight")

    private static var maximumPackagingLength_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingLength")

    private static var maximumPackagingWidth_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingWidth")

    private static var maximumPackagingHeight_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingHeight")

    private static var yy1TestFlagPRD_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "YY1_TestFlag_PRD")

    private static var yy1WebSaleablePRD_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "YY1_WebSaleable_PRD")

    private static var yy1SaleableProductPRD_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "YY1_SaleableProduct_PRD")

    private static var toDescription_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Description")

    private static var toPlant_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Plant")

    private static var toProductBasicText_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductBasicText")

    private static var toProductInspectionText_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductInspectionText")

    private static var toProductProcurement_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductProcurement")

    private static var toProductPurchaseText_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductPurchaseText")

    private static var toProductQualityMgmt_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductQualityMgmt")

    private static var toProductSales_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductSales")

    private static var toProductSalesTax_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductSalesTax")

    private static var toProductStorage_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductStorage")

    private static var toProductUnitsOfMeasure_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductUnitsOfMeasure")

    private static var toSalesDelivery_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_SalesDelivery")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType)
    }

    open class var adjustmentProfile: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.adjustmentProfile_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.adjustmentProfile_ = value
            }
        }
    }

    open var adjustmentProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.adjustmentProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.adjustmentProfile, to: StringValue.of(optional: value))
        }
    }

    open class var anpCode: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.anpCode_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.anpCode_ = value
            }
        }
    }

    open var anpCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.anpCode))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.anpCode, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<AProductType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductType>())
    }

    open class var authorizationGroup: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.authorizationGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.authorizationGroup_ = value
            }
        }
    }

    open var authorizationGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.authorizationGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.authorizationGroup, to: StringValue.of(optional: value))
        }
    }

    open class var baseUnit: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.baseUnit_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.baseUnit_ = value
            }
        }
    }

    open var baseUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.baseUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.baseUnit, to: StringValue.of(optional: value))
        }
    }

    open class var brand: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.brand_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.brand_ = value
            }
        }
    }

    open var brand: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.brand))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.brand, to: StringValue.of(optional: value))
        }
    }

    open class var changeNumber: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.changeNumber_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.changeNumber_ = value
            }
        }
    }

    open var changeNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.changeNumber))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.changeNumber, to: StringValue.of(optional: value))
        }
    }

    open class var competitorID: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.competitorID_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.competitorID_ = value
            }
        }
    }

    open var competitorID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.competitorID))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.competitorID, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AProductType {
        return CastRequired<AProductType>.from(self.copyEntity())
    }

    open class var countryOfOrigin: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.countryOfOrigin_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.countryOfOrigin_ = value
            }
        }
    }

    open var countryOfOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.countryOfOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.countryOfOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var createdByUser: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.createdByUser_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.createdByUser_ = value
            }
        }
    }

    open var createdByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.createdByUser))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.createdByUser, to: StringValue.of(optional: value))
        }
    }

    open class var creationDate: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.creationDate_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.creationDate_ = value
            }
        }
    }

    open var creationDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductType.creationDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.creationDate, to: value)
        }
    }

    open class var crossPlantConfigurableProduct: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.crossPlantConfigurableProduct_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.crossPlantConfigurableProduct_ = value
            }
        }
    }

    open var crossPlantConfigurableProduct: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.crossPlantConfigurableProduct))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.crossPlantConfigurableProduct, to: StringValue.of(optional: value))
        }
    }

    open class var crossPlantStatus: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.crossPlantStatus_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.crossPlantStatus_ = value
            }
        }
    }

    open var crossPlantStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.crossPlantStatus))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.crossPlantStatus, to: StringValue.of(optional: value))
        }
    }

    open class var crossPlantStatusValidityDate: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.crossPlantStatusValidityDate_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.crossPlantStatusValidityDate_ = value
            }
        }
    }

    open var crossPlantStatusValidityDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductType.crossPlantStatusValidityDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.crossPlantStatusValidityDate, to: value)
        }
    }

    open class var division: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.division_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.division_ = value
            }
        }
    }

    open var division: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.division))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.division, to: StringValue.of(optional: value))
        }
    }

    open class var externalProductGroup: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.externalProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.externalProductGroup_ = value
            }
        }
    }

    open var externalProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.externalProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.externalProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class var grossWeight: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.grossWeight_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.grossWeight_ = value
            }
        }
    }

    open var grossWeight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.grossWeight))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.grossWeight, to: DecimalValue.of(optional: value))
        }
    }

    open class var handlingIndicator: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.handlingIndicator_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.handlingIndicator_ = value
            }
        }
    }

    open var handlingIndicator: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.handlingIndicator))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.handlingIndicator, to: StringValue.of(optional: value))
        }
    }

    open class var handlingUnitType: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.handlingUnitType_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.handlingUnitType_ = value
            }
        }
    }

    open var handlingUnitType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.handlingUnitType))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.handlingUnitType, to: StringValue.of(optional: value))
        }
    }

    open class var hasVariableTareWeight: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.hasVariableTareWeight_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.hasVariableTareWeight_ = value
            }
        }
    }

    open var hasVariableTareWeight: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.hasVariableTareWeight))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.hasVariableTareWeight, to: BooleanValue.of(optional: value))
        }
    }

    open class var industryStandardName: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.industryStandardName_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.industryStandardName_ = value
            }
        }
    }

    open var industryStandardName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.industryStandardName))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.industryStandardName, to: StringValue.of(optional: value))
        }
    }

    open class var internationalArticleNumberCat: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.internationalArticleNumberCat_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.internationalArticleNumberCat_ = value
            }
        }
    }

    open var internationalArticleNumberCat: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.internationalArticleNumberCat))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.internationalArticleNumberCat, to: StringValue.of(optional: value))
        }
    }

    open class var isBatchManagementRequired: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.isBatchManagementRequired_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.isBatchManagementRequired_ = value
            }
        }
    }

    open var isBatchManagementRequired: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.isBatchManagementRequired))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.isBatchManagementRequired, to: BooleanValue.of(optional: value))
        }
    }

    open class var isMarkedForDeletion: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.isMarkedForDeletion_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.isMarkedForDeletion_ = value
            }
        }
    }

    open var isMarkedForDeletion: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.isMarkedForDeletion))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.isMarkedForDeletion, to: BooleanValue.of(optional: value))
        }
    }

    open class var isPilferable: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.isPilferable_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.isPilferable_ = value
            }
        }
    }

    open var isPilferable: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.isPilferable))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.isPilferable, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class var isRelevantForHzdsSubstances: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.isRelevantForHzdsSubstances_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.isRelevantForHzdsSubstances_ = value
            }
        }
    }

    open var isRelevantForHzdsSubstances: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.isRelevantForHzdsSubstances))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.isRelevantForHzdsSubstances, to: BooleanValue.of(optional: value))
        }
    }

    open class var itemCategoryGroup: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.itemCategoryGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.itemCategoryGroup_ = value
            }
        }
    }

    open var itemCategoryGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.itemCategoryGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.itemCategoryGroup, to: StringValue.of(optional: value))
        }
    }

    open class func key(product: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product))
    }

    open class var lastChangeDate: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.lastChangeDate_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.lastChangeDate_ = value
            }
        }
    }

    open var lastChangeDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductType.lastChangeDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.lastChangeDate, to: value)
        }
    }

    open class var lastChangeDateTime: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.lastChangeDateTime_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.lastChangeDateTime_ = value
            }
        }
    }

    open var lastChangeDateTime: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: AProductType.lastChangeDateTime))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.lastChangeDateTime, to: value)
        }
    }

    open class var lastChangedByUser: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.lastChangedByUser_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.lastChangedByUser_ = value
            }
        }
    }

    open var lastChangedByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.lastChangedByUser))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.lastChangedByUser, to: StringValue.of(optional: value))
        }
    }

    open class var lowLevelCode: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.lowLevelCode_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.lowLevelCode_ = value
            }
        }
    }

    open var lowLevelCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.lowLevelCode))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.lowLevelCode, to: StringValue.of(optional: value))
        }
    }

    open class var manufacturerNumber: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.manufacturerNumber_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.manufacturerNumber_ = value
            }
        }
    }

    open var manufacturerNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.manufacturerNumber))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.manufacturerNumber, to: StringValue.of(optional: value))
        }
    }

    open class var manufacturerPartProfile: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.manufacturerPartProfile_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.manufacturerPartProfile_ = value
            }
        }
    }

    open var manufacturerPartProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.manufacturerPartProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.manufacturerPartProfile, to: StringValue.of(optional: value))
        }
    }

    open class var materialRevisionLevel: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.materialRevisionLevel_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.materialRevisionLevel_ = value
            }
        }
    }

    open var materialRevisionLevel: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.materialRevisionLevel))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.materialRevisionLevel, to: StringValue.of(optional: value))
        }
    }

    open class var materialVolume: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.materialVolume_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.materialVolume_ = value
            }
        }
    }

    open var materialVolume: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.materialVolume))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.materialVolume, to: DecimalValue.of(optional: value))
        }
    }

    open class var maximumPackagingHeight: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.maximumPackagingHeight_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.maximumPackagingHeight_ = value
            }
        }
    }

    open var maximumPackagingHeight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.maximumPackagingHeight))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.maximumPackagingHeight, to: DecimalValue.of(optional: value))
        }
    }

    open class var maximumPackagingLength: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.maximumPackagingLength_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.maximumPackagingLength_ = value
            }
        }
    }

    open var maximumPackagingLength: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.maximumPackagingLength))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.maximumPackagingLength, to: DecimalValue.of(optional: value))
        }
    }

    open class var maximumPackagingWidth: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.maximumPackagingWidth_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.maximumPackagingWidth_ = value
            }
        }
    }

    open var maximumPackagingWidth: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.maximumPackagingWidth))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.maximumPackagingWidth, to: DecimalValue.of(optional: value))
        }
    }

    open class var netWeight: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.netWeight_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.netWeight_ = value
            }
        }
    }

    open var netWeight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.netWeight))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.netWeight, to: DecimalValue.of(optional: value))
        }
    }

    open var old: AProductType {
        return CastRequired<AProductType>.from(self.oldEntity)
    }

    open class var preferredUnitOfMeasure: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.preferredUnitOfMeasure_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.preferredUnitOfMeasure_ = value
            }
        }
    }

    open var preferredUnitOfMeasure: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.preferredUnitOfMeasure))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.preferredUnitOfMeasure, to: StringValue.of(optional: value))
        }
    }

    open class var procurementRule: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.procurementRule_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.procurementRule_ = value
            }
        }
    }

    open var procurementRule: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.procurementRule))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.procurementRule, to: StringValue.of(optional: value))
        }
    }

    open class var prodNoInGenProdInPrepackProd: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.prodNoInGenProdInPrepackProd_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.prodNoInGenProdInPrepackProd_ = value
            }
        }
    }

    open var prodNoInGenProdInPrepackProd: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.prodNoInGenProdInPrepackProd))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.prodNoInGenProdInPrepackProd, to: StringValue.of(optional: value))
        }
    }

    open class var product: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.product_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.product_ = value
            }
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.product, to: StringValue.of(optional: value))
        }
    }

    open class var productGroup: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.productGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.productGroup_ = value
            }
        }
    }

    open var productGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productGroup, to: StringValue.of(optional: value))
        }
    }

    open class var productHierarchy: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.productHierarchy_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.productHierarchy_ = value
            }
        }
    }

    open var productHierarchy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productHierarchy))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productHierarchy, to: StringValue.of(optional: value))
        }
    }

    open class var productIsConfigurable: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.productIsConfigurable_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.productIsConfigurable_ = value
            }
        }
    }

    open var productIsConfigurable: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.productIsConfigurable))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productIsConfigurable, to: BooleanValue.of(optional: value))
        }
    }

    open class var productManufacturerNumber: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.productManufacturerNumber_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.productManufacturerNumber_ = value
            }
        }
    }

    open var productManufacturerNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productManufacturerNumber))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productManufacturerNumber, to: StringValue.of(optional: value))
        }
    }

    open class var productOldID: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.productOldID_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.productOldID_ = value
            }
        }
    }

    open var productOldID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productOldID))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productOldID, to: StringValue.of(optional: value))
        }
    }

    open class var productStandardID: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.productStandardID_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.productStandardID_ = value
            }
        }
    }

    open var productStandardID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productStandardID))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productStandardID, to: StringValue.of(optional: value))
        }
    }

    open class var productType: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.productType_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.productType_ = value
            }
        }
    }

    open var productType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productType))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productType, to: StringValue.of(optional: value))
        }
    }

    open class var purchaseOrderQuantityUnit: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.purchaseOrderQuantityUnit_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.purchaseOrderQuantityUnit_ = value
            }
        }
    }

    open var purchaseOrderQuantityUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.purchaseOrderQuantityUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.purchaseOrderQuantityUnit, to: StringValue.of(optional: value))
        }
    }

    open class var qualityInspectionGroup: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.qualityInspectionGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.qualityInspectionGroup_ = value
            }
        }
    }

    open var qualityInspectionGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.qualityInspectionGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.qualityInspectionGroup, to: StringValue.of(optional: value))
        }
    }

    open class var quarantinePeriod: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.quarantinePeriod_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.quarantinePeriod_ = value
            }
        }
    }

    open var quarantinePeriod: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: AProductType.quarantinePeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.quarantinePeriod, to: IntegerValue.of(optional: value))
        }
    }

    open class var serialIdentifierAssgmtProfile: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.serialIdentifierAssgmtProfile_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.serialIdentifierAssgmtProfile_ = value
            }
        }
    }

    open var serialIdentifierAssgmtProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.serialIdentifierAssgmtProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.serialIdentifierAssgmtProfile, to: StringValue.of(optional: value))
        }
    }

    open class var serialNoExplicitnessLevel: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.serialNoExplicitnessLevel_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.serialNoExplicitnessLevel_ = value
            }
        }
    }

    open var serialNoExplicitnessLevel: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.serialNoExplicitnessLevel))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.serialNoExplicitnessLevel, to: StringValue.of(optional: value))
        }
    }

    open class var serialNumberProfile: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.serialNumberProfile_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.serialNumberProfile_ = value
            }
        }
    }

    open var serialNumberProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.serialNumberProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.serialNumberProfile, to: StringValue.of(optional: value))
        }
    }

    open class var sizeOrDimensionText: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.sizeOrDimensionText_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.sizeOrDimensionText_ = value
            }
        }
    }

    open var sizeOrDimensionText: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.sizeOrDimensionText))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.sizeOrDimensionText, to: StringValue.of(optional: value))
        }
    }

    open class var sourceOfSupply: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.sourceOfSupply_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.sourceOfSupply_ = value
            }
        }
    }

    open var sourceOfSupply: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.sourceOfSupply))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.sourceOfSupply, to: StringValue.of(optional: value))
        }
    }

    open class var standardHandlingUnitType: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.standardHandlingUnitType_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.standardHandlingUnitType_ = value
            }
        }
    }

    open var standardHandlingUnitType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.standardHandlingUnitType))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.standardHandlingUnitType, to: StringValue.of(optional: value))
        }
    }

    open class var timeUnitForQuarantinePeriod: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.timeUnitForQuarantinePeriod_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.timeUnitForQuarantinePeriod_ = value
            }
        }
    }

    open var timeUnitForQuarantinePeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.timeUnitForQuarantinePeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.timeUnitForQuarantinePeriod, to: StringValue.of(optional: value))
        }
    }

    open class var toDescription: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toDescription_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toDescription_ = value
            }
        }
    }

    open var toDescription: Array<AProductDescriptionType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AProductType.toDescription)).toArray(), Array<AProductDescriptionType>())
        }
        set(value) {
            AProductType.toDescription.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var toPlant: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toPlant_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toPlant_ = value
            }
        }
    }

    open var toPlant: Array<AProductPlantType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AProductType.toPlant)).toArray(), Array<AProductPlantType>())
        }
        set(value) {
            AProductType.toPlant.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var toProductBasicText: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductBasicText_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductBasicText_ = value
            }
        }
    }

    open class var toProductInspectionText: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductInspectionText_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductInspectionText_ = value
            }
        }
    }

    open class var toProductProcurement: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductProcurement_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductProcurement_ = value
            }
        }
    }

    open class var toProductPurchaseText: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductPurchaseText_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductPurchaseText_ = value
            }
        }
    }

    open class var toProductQualityMgmt: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductQualityMgmt_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductQualityMgmt_ = value
            }
        }
    }

    open class var toProductSales: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductSales_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductSales_ = value
            }
        }
    }

    open class var toProductSalesTax: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductSalesTax_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductSalesTax_ = value
            }
        }
    }

    open class var toProductStorage: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductStorage_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductStorage_ = value
            }
        }
    }

    open class var toProductUnitsOfMeasure: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toProductUnitsOfMeasure_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toProductUnitsOfMeasure_ = value
            }
        }
    }

    open class var toSalesDelivery: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.toSalesDelivery_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.toSalesDelivery_ = value
            }
        }
    }

    open var toSalesDelivery: Array<AProductSalesDeliveryType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AProductType.toSalesDelivery)).toArray(), Array<AProductSalesDeliveryType>())
        }
        set(value) {
            AProductType.toSalesDelivery.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var validityStartDate: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.validityStartDate_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.validityStartDate_ = value
            }
        }
    }

    open var validityStartDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductType.validityStartDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.validityStartDate, to: value)
        }
    }

    open class var varblPurOrdUnitIsActive: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.varblPurOrdUnitIsActive_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.varblPurOrdUnitIsActive_ = value
            }
        }
    }

    open var varblPurOrdUnitIsActive: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.varblPurOrdUnitIsActive))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.varblPurOrdUnitIsActive, to: StringValue.of(optional: value))
        }
    }

    open class var volumeUnit: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.volumeUnit_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.volumeUnit_ = value
            }
        }
    }

    open var volumeUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.volumeUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.volumeUnit, to: StringValue.of(optional: value))
        }
    }

    open class var warehouseProductGroup: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.warehouseProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.warehouseProductGroup_ = value
            }
        }
    }

    open var warehouseProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.warehouseProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.warehouseProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class var warehouseStorageCondition: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.warehouseStorageCondition_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.warehouseStorageCondition_ = value
            }
        }
    }

    open var warehouseStorageCondition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.warehouseStorageCondition))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.warehouseStorageCondition, to: StringValue.of(optional: value))
        }
    }

    open class var weightUnit: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.weightUnit_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.weightUnit_ = value
            }
        }
    }

    open var weightUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.weightUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.weightUnit, to: StringValue.of(optional: value))
        }
    }

    open class var yy1SaleableProductPRD: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.yy1SaleableProductPRD_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.yy1SaleableProductPRD_ = value
            }
        }
    }

    open var yy1SaleableProductPRD: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.yy1SaleableProductPRD))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.yy1SaleableProductPRD, to: BooleanValue.of(optional: value))
        }
    }

    open class var yy1TestFlagPRD: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.yy1TestFlagPRD_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.yy1TestFlagPRD_ = value
            }
        }
    }

    open var yy1TestFlagPRD: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.yy1TestFlagPRD))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.yy1TestFlagPRD, to: BooleanValue.of(optional: value))
        }
    }

    open class var yy1WebSaleablePRD: Property {
        get {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                return AProductType.yy1WebSaleablePRD_
            }
        }
        set(value) {
            objc_sync_enter(AProductType.self)
            defer { objc_sync_exit(AProductType.self) }
            do {
                AProductType.yy1WebSaleablePRD_ = value
            }
        }
    }

    open var yy1WebSaleablePRD: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.yy1WebSaleablePRD))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.yy1WebSaleablePRD, to: BooleanValue.of(optional: value))
        }
    }
}
