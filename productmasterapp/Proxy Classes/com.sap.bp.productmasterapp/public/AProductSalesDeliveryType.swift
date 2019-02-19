// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class AProductSalesDeliveryType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var product_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "Product")

    private static var productSalesOrg_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesOrg")

    private static var productDistributionChnl_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductDistributionChnl")

    private static var minimumOrderQuantity_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "MinimumOrderQuantity")

    private static var supplyingPlant_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SupplyingPlant")

    private static var priceSpecificationProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "PriceSpecificationProductGroup")

    private static var accountDetnProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "AccountDetnProductGroup")

    private static var deliveryNoteProcMinDelivQty_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryNoteProcMinDelivQty")

    private static var itemCategoryGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ItemCategoryGroup")

    private static var deliveryQuantityUnit_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryQuantityUnit")

    private static var deliveryQuantity_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryQuantity")

    private static var productSalesStatus_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesStatus")

    private static var productSalesStatusValidityDate_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesStatusValidityDate")

    private static var salesMeasureUnit_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SalesMeasureUnit")

    private static var isMarkedForDeletion_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "IsMarkedForDeletion")

    private static var productHierarchy_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductHierarchy")

    private static var firstSalesSpecProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FirstSalesSpecProductGroup")

    private static var secondSalesSpecProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SecondSalesSpecProductGroup")

    private static var thirdSalesSpecProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ThirdSalesSpecProductGroup")

    private static var fourthSalesSpecProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FourthSalesSpecProductGroup")

    private static var fifthSalesSpecProductGroup_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FifthSalesSpecProductGroup")

    private static var minimumMakeToOrderOrderQty_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "MinimumMakeToOrderOrderQty")

    private static var toSalesText_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "to_SalesText")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType)
    }

    open class var accountDetnProductGroup: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.accountDetnProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.accountDetnProductGroup_ = value
            }
        }
    }

    open var accountDetnProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.accountDetnProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.accountDetnProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<AProductSalesDeliveryType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductSalesDeliveryType>())
    }

    open func copy() -> AProductSalesDeliveryType {
        return CastRequired<AProductSalesDeliveryType>.from(self.copyEntity())
    }

    open class var deliveryNoteProcMinDelivQty: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.deliveryNoteProcMinDelivQty_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.deliveryNoteProcMinDelivQty_ = value
            }
        }
    }

    open var deliveryNoteProcMinDelivQty: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSalesDeliveryType.deliveryNoteProcMinDelivQty))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.deliveryNoteProcMinDelivQty, to: DecimalValue.of(optional: value))
        }
    }

    open class var deliveryQuantity: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.deliveryQuantity_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.deliveryQuantity_ = value
            }
        }
    }

    open var deliveryQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSalesDeliveryType.deliveryQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.deliveryQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open class var deliveryQuantityUnit: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.deliveryQuantityUnit_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.deliveryQuantityUnit_ = value
            }
        }
    }

    open var deliveryQuantityUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.deliveryQuantityUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.deliveryQuantityUnit, to: StringValue.of(optional: value))
        }
    }

    open class var fifthSalesSpecProductGroup: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.fifthSalesSpecProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.fifthSalesSpecProductGroup_ = value
            }
        }
    }

    open var fifthSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.fifthSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.fifthSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class var firstSalesSpecProductGroup: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.firstSalesSpecProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.firstSalesSpecProductGroup_ = value
            }
        }
    }

    open var firstSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.firstSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.firstSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class var fourthSalesSpecProductGroup: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.fourthSalesSpecProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.fourthSalesSpecProductGroup_ = value
            }
        }
    }

    open var fourthSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.fourthSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.fourthSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class var isMarkedForDeletion: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.isMarkedForDeletion_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.isMarkedForDeletion_ = value
            }
        }
    }

    open var isMarkedForDeletion: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductSalesDeliveryType.isMarkedForDeletion))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.isMarkedForDeletion, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class var itemCategoryGroup: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.itemCategoryGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.itemCategoryGroup_ = value
            }
        }
    }

    open var itemCategoryGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.itemCategoryGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.itemCategoryGroup, to: StringValue.of(optional: value))
        }
    }

    open class func key(product: String?, productSalesOrg: String?, productDistributionChnl: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "ProductSalesOrg", value: StringValue.of(optional: productSalesOrg)).with(name: "ProductDistributionChnl", value: StringValue.of(optional: productDistributionChnl))
    }

    open class var minimumMakeToOrderOrderQty: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.minimumMakeToOrderOrderQty_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.minimumMakeToOrderOrderQty_ = value
            }
        }
    }

    open var minimumMakeToOrderOrderQty: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSalesDeliveryType.minimumMakeToOrderOrderQty))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.minimumMakeToOrderOrderQty, to: DecimalValue.of(optional: value))
        }
    }

    open class var minimumOrderQuantity: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.minimumOrderQuantity_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.minimumOrderQuantity_ = value
            }
        }
    }

    open var minimumOrderQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSalesDeliveryType.minimumOrderQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.minimumOrderQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var old: AProductSalesDeliveryType {
        return CastRequired<AProductSalesDeliveryType>.from(self.oldEntity)
    }

    open class var priceSpecificationProductGroup: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.priceSpecificationProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.priceSpecificationProductGroup_ = value
            }
        }
    }

    open var priceSpecificationProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.priceSpecificationProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.priceSpecificationProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class var product: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.product_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.product_ = value
            }
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.product, to: StringValue.of(optional: value))
        }
    }

    open class var productDistributionChnl: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.productDistributionChnl_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.productDistributionChnl_ = value
            }
        }
    }

    open var productDistributionChnl: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.productDistributionChnl))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productDistributionChnl, to: StringValue.of(optional: value))
        }
    }

    open class var productHierarchy: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.productHierarchy_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.productHierarchy_ = value
            }
        }
    }

    open var productHierarchy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.productHierarchy))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productHierarchy, to: StringValue.of(optional: value))
        }
    }

    open class var productSalesOrg: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.productSalesOrg_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.productSalesOrg_ = value
            }
        }
    }

    open var productSalesOrg: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.productSalesOrg))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productSalesOrg, to: StringValue.of(optional: value))
        }
    }

    open class var productSalesStatus: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.productSalesStatus_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.productSalesStatus_ = value
            }
        }
    }

    open var productSalesStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.productSalesStatus))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productSalesStatus, to: StringValue.of(optional: value))
        }
    }

    open class var productSalesStatusValidityDate: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.productSalesStatusValidityDate_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.productSalesStatusValidityDate_ = value
            }
        }
    }

    open var productSalesStatusValidityDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductSalesDeliveryType.productSalesStatusValidityDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productSalesStatusValidityDate, to: value)
        }
    }

    open class var salesMeasureUnit: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.salesMeasureUnit_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.salesMeasureUnit_ = value
            }
        }
    }

    open var salesMeasureUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.salesMeasureUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.salesMeasureUnit, to: StringValue.of(optional: value))
        }
    }

    open class var secondSalesSpecProductGroup: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.secondSalesSpecProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.secondSalesSpecProductGroup_ = value
            }
        }
    }

    open var secondSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.secondSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.secondSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class var supplyingPlant: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.supplyingPlant_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.supplyingPlant_ = value
            }
        }
    }

    open var supplyingPlant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.supplyingPlant))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.supplyingPlant, to: StringValue.of(optional: value))
        }
    }

    open class var thirdSalesSpecProductGroup: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.thirdSalesSpecProductGroup_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.thirdSalesSpecProductGroup_ = value
            }
        }
    }

    open var thirdSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.thirdSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.thirdSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class var toSalesText: Property {
        get {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                return AProductSalesDeliveryType.toSalesText_
            }
        }
        set(value) {
            objc_sync_enter(AProductSalesDeliveryType.self)
            defer { objc_sync_exit(AProductSalesDeliveryType.self) }
            do {
                AProductSalesDeliveryType.toSalesText_ = value
            }
        }
    }
}
