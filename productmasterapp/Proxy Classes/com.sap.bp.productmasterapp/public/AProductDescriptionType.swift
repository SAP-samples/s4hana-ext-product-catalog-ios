// # Proxy Compiler 19.9.0-197466-20190927

import Foundation
import SAPOData

open class AProductDescriptionType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var product_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "Product")

    private static var language_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "Language")

    private static var productDescription_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "ProductDescription")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType)
    }

    open class func array(from: EntityValueList) -> [AProductDescriptionType] {
        return ArrayConverter.convert(from.toArray(), [AProductDescriptionType]())
    }

    open func copy() -> AProductDescriptionType {
        return CastRequired<AProductDescriptionType>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, language: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Language", value: StringValue.of(optional: language))
    }

    open class var language: Property {
        get {
            objc_sync_enter(AProductDescriptionType.self)
            defer { objc_sync_exit(AProductDescriptionType.self) }
            do {
                return AProductDescriptionType.language_
            }
        }
        set(value) {
            objc_sync_enter(AProductDescriptionType.self)
            defer { objc_sync_exit(AProductDescriptionType.self) }
            do {
                AProductDescriptionType.language_ = value
            }
        }
    }

    open var language: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductDescriptionType.language))
        }
        set(value) {
            self.setOptionalValue(for: AProductDescriptionType.language, to: StringValue.of(optional: value))
        }
    }

    open var old: AProductDescriptionType {
        return CastRequired<AProductDescriptionType>.from(self.oldEntity)
    }

    open class var product: Property {
        get {
            objc_sync_enter(AProductDescriptionType.self)
            defer { objc_sync_exit(AProductDescriptionType.self) }
            do {
                return AProductDescriptionType.product_
            }
        }
        set(value) {
            objc_sync_enter(AProductDescriptionType.self)
            defer { objc_sync_exit(AProductDescriptionType.self) }
            do {
                AProductDescriptionType.product_ = value
            }
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductDescriptionType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductDescriptionType.product, to: StringValue.of(optional: value))
        }
    }

    open class var productDescription: Property {
        get {
            objc_sync_enter(AProductDescriptionType.self)
            defer { objc_sync_exit(AProductDescriptionType.self) }
            do {
                return AProductDescriptionType.productDescription_
            }
        }
        set(value) {
            objc_sync_enter(AProductDescriptionType.self)
            defer { objc_sync_exit(AProductDescriptionType.self) }
            do {
                AProductDescriptionType.productDescription_ = value
            }
        }
    }

    open var productDescription: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductDescriptionType.productDescription))
        }
        set(value) {
            self.setOptionalValue(for: AProductDescriptionType.productDescription, to: StringValue.of(optional: value))
        }
    }
}
