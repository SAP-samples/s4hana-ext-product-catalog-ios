// # Proxy Compiler 19.9.0-197466-20190927

import Foundation
import SAPOData

open class AProductPlantType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var product_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Product")

    private static var plant_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Plant")

    private static var purchasingGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "PurchasingGroup")

    private static var countryOfOrigin_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "CountryOfOrigin")

    private static var regionOfOrigin_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "RegionOfOrigin")

    private static var productionInvtryManagedLoc_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductionInvtryManagedLoc")

    private static var profileCode_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfileCode")

    private static var profileValidityStartDate_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfileValidityStartDate")

    private static var availabilityCheckType_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "AvailabilityCheckType")

    private static var fiscalYearVariant_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalYearVariant")

    private static var periodType_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "PeriodType")

    private static var profitCenter_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfitCenter")

    private static var commodity_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Commodity")

    private static var goodsReceiptDuration_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "GoodsReceiptDuration")

    private static var maintenanceStatusName_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MaintenanceStatusName")

    private static var isMarkedForDeletion_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsMarkedForDeletion")

    private static var mrpType_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MRPType")

    private static var mrpResponsible_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MRPResponsible")

    private static var abcIndicator_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ABCIndicator")

    private static var minimumLotSizeQuantity_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MinimumLotSizeQuantity")

    private static var maximumLotSizeQuantity_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MaximumLotSizeQuantity")

    private static var fixedLotSizeQuantity_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FixedLotSizeQuantity")

    private static var consumptionTaxCtrlCode_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ConsumptionTaxCtrlCode")

    private static var isCoProduct_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsCoProduct")

    private static var productIsConfigurable_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductIsConfigurable")

    private static var stockDeterminationGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockDeterminationGroup")

    private static var stockInTransferQuantity_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockInTransferQuantity")

    private static var stockInTransitQuantity_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockInTransitQuantity")

    private static var hasPostToInspectionStock_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "HasPostToInspectionStock")

    private static var isBatchManagementRequired_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsBatchManagementRequired")

    private static var serialNumberProfile_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "SerialNumberProfile")

    private static var isNegativeStockAllowed_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsNegativeStockAllowed")

    private static var goodsReceiptBlockedStockQty_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "GoodsReceiptBlockedStockQty")

    private static var hasConsignmentCtrl_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "HasConsignmentCtrl")

    private static var fiscalYearCurrentPeriod_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalYearCurrentPeriod")

    private static var fiscalMonthCurrentPeriod_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalMonthCurrentPeriod")

    private static var procurementType_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProcurementType")

    private static var isInternalBatchManaged_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsInternalBatchManaged")

    private static var productCFOPCategory_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductCFOPCategory")

    private static var productIsExciseTaxRelevant_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductIsExciseTaxRelevant")

    private static var toPlantMRPArea_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantMRPArea")

    private static var toPlantQualityMgmt_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantQualityMgmt")

    private static var toPlantSales_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantSales")

    private static var toPlantStorage_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantStorage")

    private static var toPlantText_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantText")

    private static var toProdPlantInternationalTrade_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProdPlantInternationalTrade")

    private static var toProductPlantCosting_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductPlantCosting")

    private static var toProductPlantForecast_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductPlantForecast")

    private static var toProductPlantProcurement_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductPlantProcurement")

    private static var toProductSupplyPlanning_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductSupplyPlanning")

    private static var toProductWorkScheduling_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductWorkScheduling")

    private static var toStorageLocation_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_StorageLocation")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType)
    }

    open class var abcIndicator: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.abcIndicator_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.abcIndicator_ = value
            }
        }
    }

    open var abcIndicator: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.abcIndicator))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.abcIndicator, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> [AProductPlantType] {
        return ArrayConverter.convert(from.toArray(), [AProductPlantType]())
    }

    open class var availabilityCheckType: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.availabilityCheckType_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.availabilityCheckType_ = value
            }
        }
    }

    open var availabilityCheckType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.availabilityCheckType))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.availabilityCheckType, to: StringValue.of(optional: value))
        }
    }

    open class var commodity: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.commodity_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.commodity_ = value
            }
        }
    }

    open var commodity: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.commodity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.commodity, to: StringValue.of(optional: value))
        }
    }

    open class var consumptionTaxCtrlCode: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.consumptionTaxCtrlCode_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.consumptionTaxCtrlCode_ = value
            }
        }
    }

    open var consumptionTaxCtrlCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.consumptionTaxCtrlCode))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.consumptionTaxCtrlCode, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AProductPlantType {
        return CastRequired<AProductPlantType>.from(self.copyEntity())
    }

    open class var countryOfOrigin: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.countryOfOrigin_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.countryOfOrigin_ = value
            }
        }
    }

    open var countryOfOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.countryOfOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.countryOfOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var fiscalMonthCurrentPeriod: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.fiscalMonthCurrentPeriod_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.fiscalMonthCurrentPeriod_ = value
            }
        }
    }

    open var fiscalMonthCurrentPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.fiscalMonthCurrentPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.fiscalMonthCurrentPeriod, to: StringValue.of(optional: value))
        }
    }

    open class var fiscalYearCurrentPeriod: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.fiscalYearCurrentPeriod_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.fiscalYearCurrentPeriod_ = value
            }
        }
    }

    open var fiscalYearCurrentPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.fiscalYearCurrentPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.fiscalYearCurrentPeriod, to: StringValue.of(optional: value))
        }
    }

    open class var fiscalYearVariant: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.fiscalYearVariant_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.fiscalYearVariant_ = value
            }
        }
    }

    open var fiscalYearVariant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.fiscalYearVariant))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.fiscalYearVariant, to: StringValue.of(optional: value))
        }
    }

    open class var fixedLotSizeQuantity: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.fixedLotSizeQuantity_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.fixedLotSizeQuantity_ = value
            }
        }
    }

    open var fixedLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.fixedLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.fixedLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open class var goodsReceiptBlockedStockQty: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.goodsReceiptBlockedStockQty_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.goodsReceiptBlockedStockQty_ = value
            }
        }
    }

    open var goodsReceiptBlockedStockQty: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.goodsReceiptBlockedStockQty))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.goodsReceiptBlockedStockQty, to: DecimalValue.of(optional: value))
        }
    }

    open class var goodsReceiptDuration: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.goodsReceiptDuration_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.goodsReceiptDuration_ = value
            }
        }
    }

    open var goodsReceiptDuration: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: AProductPlantType.goodsReceiptDuration))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.goodsReceiptDuration, to: IntegerValue.of(optional: value))
        }
    }

    open class var hasConsignmentCtrl: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.hasConsignmentCtrl_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.hasConsignmentCtrl_ = value
            }
        }
    }

    open var hasConsignmentCtrl: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.hasConsignmentCtrl))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.hasConsignmentCtrl, to: StringValue.of(optional: value))
        }
    }

    open class var hasPostToInspectionStock: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.hasPostToInspectionStock_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.hasPostToInspectionStock_ = value
            }
        }
    }

    open var hasPostToInspectionStock: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.hasPostToInspectionStock))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.hasPostToInspectionStock, to: BooleanValue.of(optional: value))
        }
    }

    open class var isBatchManagementRequired: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.isBatchManagementRequired_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.isBatchManagementRequired_ = value
            }
        }
    }

    open var isBatchManagementRequired: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isBatchManagementRequired))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isBatchManagementRequired, to: BooleanValue.of(optional: value))
        }
    }

    open class var isCoProduct: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.isCoProduct_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.isCoProduct_ = value
            }
        }
    }

    open var isCoProduct: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isCoProduct))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isCoProduct, to: BooleanValue.of(optional: value))
        }
    }

    open class var isInternalBatchManaged: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.isInternalBatchManaged_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.isInternalBatchManaged_ = value
            }
        }
    }

    open var isInternalBatchManaged: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isInternalBatchManaged))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isInternalBatchManaged, to: BooleanValue.of(optional: value))
        }
    }

    open class var isMarkedForDeletion: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.isMarkedForDeletion_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.isMarkedForDeletion_ = value
            }
        }
    }

    open var isMarkedForDeletion: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isMarkedForDeletion))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isMarkedForDeletion, to: BooleanValue.of(optional: value))
        }
    }

    open class var isNegativeStockAllowed: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.isNegativeStockAllowed_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.isNegativeStockAllowed_ = value
            }
        }
    }

    open var isNegativeStockAllowed: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isNegativeStockAllowed))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isNegativeStockAllowed, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, plant: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Plant", value: StringValue.of(optional: plant))
    }

    open class var maintenanceStatusName: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.maintenanceStatusName_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.maintenanceStatusName_ = value
            }
        }
    }

    open var maintenanceStatusName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.maintenanceStatusName))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.maintenanceStatusName, to: StringValue.of(optional: value))
        }
    }

    open class var maximumLotSizeQuantity: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.maximumLotSizeQuantity_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.maximumLotSizeQuantity_ = value
            }
        }
    }

    open var maximumLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.maximumLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.maximumLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open class var minimumLotSizeQuantity: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.minimumLotSizeQuantity_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.minimumLotSizeQuantity_ = value
            }
        }
    }

    open var minimumLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.minimumLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.minimumLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open class var mrpResponsible: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.mrpResponsible_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.mrpResponsible_ = value
            }
        }
    }

    open var mrpResponsible: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.mrpResponsible))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.mrpResponsible, to: StringValue.of(optional: value))
        }
    }

    open class var mrpType: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.mrpType_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.mrpType_ = value
            }
        }
    }

    open var mrpType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.mrpType))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.mrpType, to: StringValue.of(optional: value))
        }
    }

    open var old: AProductPlantType {
        return CastRequired<AProductPlantType>.from(self.oldEntity)
    }

    open class var periodType: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.periodType_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.periodType_ = value
            }
        }
    }

    open var periodType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.periodType))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.periodType, to: StringValue.of(optional: value))
        }
    }

    open class var plant: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.plant_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.plant_ = value
            }
        }
    }

    open var plant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.plant))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.plant, to: StringValue.of(optional: value))
        }
    }

    open class var procurementType: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.procurementType_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.procurementType_ = value
            }
        }
    }

    open var procurementType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.procurementType))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.procurementType, to: StringValue.of(optional: value))
        }
    }

    open class var product: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.product_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.product_ = value
            }
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.product, to: StringValue.of(optional: value))
        }
    }

    open class var productCFOPCategory: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.productCFOPCategory_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.productCFOPCategory_ = value
            }
        }
    }

    open var productCFOPCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.productCFOPCategory))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.productCFOPCategory, to: StringValue.of(optional: value))
        }
    }

    open class var productIsConfigurable: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.productIsConfigurable_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.productIsConfigurable_ = value
            }
        }
    }

    open var productIsConfigurable: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.productIsConfigurable))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.productIsConfigurable, to: StringValue.of(optional: value))
        }
    }

    open class var productIsExciseTaxRelevant: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.productIsExciseTaxRelevant_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.productIsExciseTaxRelevant_ = value
            }
        }
    }

    open var productIsExciseTaxRelevant: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.productIsExciseTaxRelevant))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.productIsExciseTaxRelevant, to: BooleanValue.of(optional: value))
        }
    }

    open class var productionInvtryManagedLoc: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.productionInvtryManagedLoc_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.productionInvtryManagedLoc_ = value
            }
        }
    }

    open var productionInvtryManagedLoc: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.productionInvtryManagedLoc))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.productionInvtryManagedLoc, to: StringValue.of(optional: value))
        }
    }

    open class var profileCode: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.profileCode_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.profileCode_ = value
            }
        }
    }

    open var profileCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.profileCode))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.profileCode, to: StringValue.of(optional: value))
        }
    }

    open class var profileValidityStartDate: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.profileValidityStartDate_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.profileValidityStartDate_ = value
            }
        }
    }

    open var profileValidityStartDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductPlantType.profileValidityStartDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.profileValidityStartDate, to: value)
        }
    }

    open class var profitCenter: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.profitCenter_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.profitCenter_ = value
            }
        }
    }

    open var profitCenter: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.profitCenter))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.profitCenter, to: StringValue.of(optional: value))
        }
    }

    open class var purchasingGroup: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.purchasingGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.purchasingGroup_ = value
            }
        }
    }

    open var purchasingGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.purchasingGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.purchasingGroup, to: StringValue.of(optional: value))
        }
    }

    open class var regionOfOrigin: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.regionOfOrigin_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.regionOfOrigin_ = value
            }
        }
    }

    open var regionOfOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.regionOfOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.regionOfOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var serialNumberProfile: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.serialNumberProfile_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.serialNumberProfile_ = value
            }
        }
    }

    open var serialNumberProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.serialNumberProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.serialNumberProfile, to: StringValue.of(optional: value))
        }
    }

    open class var stockDeterminationGroup: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.stockDeterminationGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.stockDeterminationGroup_ = value
            }
        }
    }

    open var stockDeterminationGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.stockDeterminationGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.stockDeterminationGroup, to: StringValue.of(optional: value))
        }
    }

    open class var stockInTransferQuantity: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.stockInTransferQuantity_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.stockInTransferQuantity_ = value
            }
        }
    }

    open var stockInTransferQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.stockInTransferQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.stockInTransferQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open class var stockInTransitQuantity: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.stockInTransitQuantity_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.stockInTransitQuantity_ = value
            }
        }
    }

    open var stockInTransitQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.stockInTransitQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.stockInTransitQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open class var toPlantMRPArea: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toPlantMRPArea_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toPlantMRPArea_ = value
            }
        }
    }

    open class var toPlantQualityMgmt: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toPlantQualityMgmt_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toPlantQualityMgmt_ = value
            }
        }
    }

    open class var toPlantSales: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toPlantSales_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toPlantSales_ = value
            }
        }
    }

   open class var toPlantStorage: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toPlantStorage_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toPlantStorage_ = value
            }
        }
    }

    open class var toPlantText: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toPlantText_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toPlantText_ = value
            }
        }
    }

    open class var toProdPlantInternationalTrade: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toProdPlantInternationalTrade_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toProdPlantInternationalTrade_ = value
            }
        }
    }

    open class var toProductPlantCosting: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toProductPlantCosting_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toProductPlantCosting_ = value
            }
        }
    }

    open class var toProductPlantForecast: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toProductPlantForecast_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toProductPlantForecast_ = value
            }
        }
    }

    open class var toProductPlantProcurement: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toProductPlantProcurement_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toProductPlantProcurement_ = value
            }
        }
    }

    open class var toProductSupplyPlanning: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toProductSupplyPlanning_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toProductSupplyPlanning_ = value
            }
        }
    }

    open class var toProductWorkScheduling: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toProductWorkScheduling_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toProductWorkScheduling_ = value
            }
        }
    }

    open class var toStorageLocation: Property {
        get {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                return AProductPlantType.toStorageLocation_
            }
        }
        set(value) {
            objc_sync_enter(AProductPlantType.self)
            defer { objc_sync_exit(AProductPlantType.self) }
            do {
                AProductPlantType.toStorageLocation_ = value
            }
        }
    }
}
