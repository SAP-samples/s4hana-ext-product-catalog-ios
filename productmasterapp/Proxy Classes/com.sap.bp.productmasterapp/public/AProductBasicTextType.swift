// # Proxy Compiler 19.9.0-197466-20190927

import Foundation
import SAPOData

open class AProductBasicTextType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var product_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType.property(withName: "Product")

    private static var language_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType.property(withName: "Language")

    private static var longText_: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType.property(withName: "LongText")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType)
    }

    open class func array(from: EntityValueList) -> [AProductBasicTextType] {
        return ArrayConverter.convert(from.toArray(), [AProductBasicTextType]())
    }

    open func copy() -> AProductBasicTextType {
        return CastRequired<AProductBasicTextType>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, language: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Language", value: StringValue.of(optional: language))
    }

    open class var language: Property {
        get {
            objc_sync_enter(AProductBasicTextType.self)
            defer { objc_sync_exit(AProductBasicTextType.self) }
            do {
                return AProductBasicTextType.language_
            }
        }
        set(value) {
            objc_sync_enter(AProductBasicTextType.self)
            defer { objc_sync_exit(AProductBasicTextType.self) }
            do {
                AProductBasicTextType.language_ = value
            }
        }
    }

    open var language: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductBasicTextType.language))
        }
        set(value) {
            self.setOptionalValue(for: AProductBasicTextType.language, to: StringValue.of(optional: value))
        }
    }

    open class var longText: Property {
        get {
            objc_sync_enter(AProductBasicTextType.self)
            defer { objc_sync_exit(AProductBasicTextType.self) }
            do {
                return AProductBasicTextType.longText_
            }
        }
        set(value) {
            objc_sync_enter(AProductBasicTextType.self)
            defer { objc_sync_exit(AProductBasicTextType.self) }
            do {
                AProductBasicTextType.longText_ = value
            }
        }
    }

    open var longText: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductBasicTextType.longText))
        }
        set(value) {
            self.setOptionalValue(for: AProductBasicTextType.longText, to: StringValue.of(optional: value))
        }
    }

    open var old: AProductBasicTextType {
        return CastRequired<AProductBasicTextType>.from(self.oldEntity)
    }

    open class var product: Property {
        get {
            objc_sync_enter(AProductBasicTextType.self)
            defer { objc_sync_exit(AProductBasicTextType.self) }
            do {
                return AProductBasicTextType.product_
            }
        }
        set(value) {
            objc_sync_enter(AProductBasicTextType.self)
            defer { objc_sync_exit(AProductBasicTextType.self) }
            do {
                AProductBasicTextType.product_ = value
            }
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductBasicTextType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductBasicTextType.product, to: StringValue.of(optional: value))
        }
    }
}
