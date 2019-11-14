// # Proxy Compiler 19.9.0-197466-20190927

import Foundation
import SAPOData

internal class APIPRODUCTSRVEntitiesMetadataChanges {
    static func merge(metadata: CSDLDocument) {
        metadata.hasGeneratedProxies = true
        APIPRODUCTSRVEntitiesMetadata.document = metadata
        APIPRODUCTSRVEntitiesMetadataChanges.merge1(metadata: metadata)
        try! APIPRODUCTSRVEntitiesFactory.registerAll()
    }

    private static func merge1(metadata: CSDLDocument) {
        Ignore.valueOf_any(metadata)
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductBasicTextType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductDescriptionType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesDeliveryType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct = metadata.entitySet(withName: "A_Product")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductBasicText.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductBasicText = metadata.entitySet(withName: "A_ProductBasicText")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription = metadata.entitySet(withName: "A_ProductDescription")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductInspectionText.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductInspectionText = metadata.entitySet(withName: "A_ProductInspectionText")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductMLAccount.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductMLAccount = metadata.entitySet(withName: "A_ProductMLAccount")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductMLPrices.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductMLPrices = metadata.entitySet(withName: "A_ProductMLPrices")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant = metadata.entitySet(withName: "A_ProductPlant")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantCosting.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantCosting = metadata.entitySet(withName: "A_ProductPlantCosting")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantForecasting.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantForecasting = metadata.entitySet(withName: "A_ProductPlantForecasting")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantIntlTrd.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantIntlTrd = metadata.entitySet(withName: "A_ProductPlantIntlTrd")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantMRPArea.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantMRPArea = metadata.entitySet(withName: "A_ProductPlantMRPArea")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantProcurement.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantProcurement = metadata.entitySet(withName: "A_ProductPlantProcurement")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantQualityMgmt.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantQualityMgmt = metadata.entitySet(withName: "A_ProductPlantQualityMgmt")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantSales.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantSales = metadata.entitySet(withName: "A_ProductPlantSales")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantStorage.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantStorage = metadata.entitySet(withName: "A_ProductPlantStorage")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantText.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantText = metadata.entitySet(withName: "A_ProductPlantText")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductProcurement.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductProcurement = metadata.entitySet(withName: "A_ProductProcurement")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPurchaseText.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPurchaseText = metadata.entitySet(withName: "A_ProductPurchaseText")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductQualityMgmt.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductQualityMgmt = metadata.entitySet(withName: "A_ProductQualityMgmt")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSales.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSales = metadata.entitySet(withName: "A_ProductSales")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery = metadata.entitySet(withName: "A_ProductSalesDelivery")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesTax.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesTax = metadata.entitySet(withName: "A_ProductSalesTax")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesText.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesText = metadata.entitySet(withName: "A_ProductSalesText")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorage.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorage = metadata.entitySet(withName: "A_ProductStorage")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorageLocation.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorageLocation = metadata.entitySet(withName: "A_ProductStorageLocation")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSupplyPlanning.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSupplyPlanning = metadata.entitySet(withName: "A_ProductSupplyPlanning")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductUnitsOfMeasure.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductUnitsOfMeasure = metadata.entitySet(withName: "A_ProductUnitsOfMeasure")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductUnitsOfMeasureEAN.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductUnitsOfMeasureEAN = metadata.entitySet(withName: "A_ProductUnitsOfMeasureEAN")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductValuation.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductValuation = metadata.entitySet(withName: "A_ProductValuation")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductValuationAccount.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductValuationAccount = metadata.entitySet(withName: "A_ProductValuationAccount")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductWorkScheduling.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductWorkScheduling = metadata.entitySet(withName: "A_ProductWorkScheduling")
        }
        if !AProductBasicTextType.product.isRemoved {
            AProductBasicTextType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType.property(withName: "Product")
        }
        if !AProductBasicTextType.language.isRemoved {
            AProductBasicTextType.language = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType.property(withName: "Language")
        }
        if !AProductBasicTextType.longText.isRemoved {
            AProductBasicTextType.longText = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductBasicTextType.property(withName: "LongText")
        }
        if !AProductDescriptionType.product.isRemoved {
            AProductDescriptionType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "Product")
        }
        if !AProductDescriptionType.language.isRemoved {
            AProductDescriptionType.language = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "Language")
        }
        if !AProductDescriptionType.productDescription.isRemoved {
            AProductDescriptionType.productDescription = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "ProductDescription")
        }
        if !AProductPlantType.product.isRemoved {
            AProductPlantType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Product")
        }
        if !AProductPlantType.plant.isRemoved {
            AProductPlantType.plant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Plant")
        }
        if !AProductPlantType.purchasingGroup.isRemoved {
            AProductPlantType.purchasingGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "PurchasingGroup")
        }
        if !AProductPlantType.countryOfOrigin.isRemoved {
            AProductPlantType.countryOfOrigin = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "CountryOfOrigin")
        }
        if !AProductPlantType.regionOfOrigin.isRemoved {
            AProductPlantType.regionOfOrigin = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "RegionOfOrigin")
        }
        if !AProductPlantType.productionInvtryManagedLoc.isRemoved {
            AProductPlantType.productionInvtryManagedLoc = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductionInvtryManagedLoc")
        }
        if !AProductPlantType.profileCode.isRemoved {
            AProductPlantType.profileCode = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfileCode")
        }
        if !AProductPlantType.profileValidityStartDate.isRemoved {
            AProductPlantType.profileValidityStartDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfileValidityStartDate")
        }
        if !AProductPlantType.availabilityCheckType.isRemoved {
            AProductPlantType.availabilityCheckType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "AvailabilityCheckType")
        }
        if !AProductPlantType.fiscalYearVariant.isRemoved {
            AProductPlantType.fiscalYearVariant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalYearVariant")
        }
        if !AProductPlantType.periodType.isRemoved {
            AProductPlantType.periodType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "PeriodType")
        }
        if !AProductPlantType.profitCenter.isRemoved {
            AProductPlantType.profitCenter = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfitCenter")
        }
        if !AProductPlantType.commodity.isRemoved {
            AProductPlantType.commodity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Commodity")
        }
        if !AProductPlantType.goodsReceiptDuration.isRemoved {
            AProductPlantType.goodsReceiptDuration = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "GoodsReceiptDuration")
        }
        if !AProductPlantType.maintenanceStatusName.isRemoved {
            AProductPlantType.maintenanceStatusName = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MaintenanceStatusName")
        }
        if !AProductPlantType.isMarkedForDeletion.isRemoved {
            AProductPlantType.isMarkedForDeletion = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsMarkedForDeletion")
        }
        if !AProductPlantType.mrpType.isRemoved {
            AProductPlantType.mrpType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MRPType")
        }
        if !AProductPlantType.mrpResponsible.isRemoved {
            AProductPlantType.mrpResponsible = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MRPResponsible")
        }
        if !AProductPlantType.abcIndicator.isRemoved {
            AProductPlantType.abcIndicator = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ABCIndicator")
        }
        if !AProductPlantType.minimumLotSizeQuantity.isRemoved {
            AProductPlantType.minimumLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MinimumLotSizeQuantity")
        }
        if !AProductPlantType.maximumLotSizeQuantity.isRemoved {
            AProductPlantType.maximumLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MaximumLotSizeQuantity")
        }
        if !AProductPlantType.fixedLotSizeQuantity.isRemoved {
            AProductPlantType.fixedLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FixedLotSizeQuantity")
        }
        if !AProductPlantType.consumptionTaxCtrlCode.isRemoved {
            AProductPlantType.consumptionTaxCtrlCode = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ConsumptionTaxCtrlCode")
        }
        if !AProductPlantType.isCoProduct.isRemoved {
            AProductPlantType.isCoProduct = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsCoProduct")
        }
        if !AProductPlantType.productIsConfigurable.isRemoved {
            AProductPlantType.productIsConfigurable = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductIsConfigurable")
        }
        if !AProductPlantType.stockDeterminationGroup.isRemoved {
            AProductPlantType.stockDeterminationGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockDeterminationGroup")
        }
        if !AProductPlantType.stockInTransferQuantity.isRemoved {
            AProductPlantType.stockInTransferQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockInTransferQuantity")
        }
        if !AProductPlantType.stockInTransitQuantity.isRemoved {
            AProductPlantType.stockInTransitQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockInTransitQuantity")
        }
        if !AProductPlantType.hasPostToInspectionStock.isRemoved {
            AProductPlantType.hasPostToInspectionStock = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "HasPostToInspectionStock")
        }
        if !AProductPlantType.isBatchManagementRequired.isRemoved {
            AProductPlantType.isBatchManagementRequired = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsBatchManagementRequired")
        }
        if !AProductPlantType.serialNumberProfile.isRemoved {
            AProductPlantType.serialNumberProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "SerialNumberProfile")
        }
        if !AProductPlantType.isNegativeStockAllowed.isRemoved {
            AProductPlantType.isNegativeStockAllowed = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsNegativeStockAllowed")
        }
        if !AProductPlantType.goodsReceiptBlockedStockQty.isRemoved {
            AProductPlantType.goodsReceiptBlockedStockQty = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "GoodsReceiptBlockedStockQty")
        }
        if !AProductPlantType.hasConsignmentCtrl.isRemoved {
            AProductPlantType.hasConsignmentCtrl = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "HasConsignmentCtrl")
        }
        if !AProductPlantType.fiscalYearCurrentPeriod.isRemoved {
            AProductPlantType.fiscalYearCurrentPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalYearCurrentPeriod")
        }
        if !AProductPlantType.fiscalMonthCurrentPeriod.isRemoved {
            AProductPlantType.fiscalMonthCurrentPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalMonthCurrentPeriod")
        }
        if !AProductPlantType.procurementType.isRemoved {
            AProductPlantType.procurementType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProcurementType")
        }
        if !AProductPlantType.isInternalBatchManaged.isRemoved {
            AProductPlantType.isInternalBatchManaged = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsInternalBatchManaged")
        }
        if !AProductPlantType.productCFOPCategory.isRemoved {
            AProductPlantType.productCFOPCategory = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductCFOPCategory")
        }
        if !AProductPlantType.productIsExciseTaxRelevant.isRemoved {
            AProductPlantType.productIsExciseTaxRelevant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductIsExciseTaxRelevant")
        }
        if !AProductPlantType.toPlantMRPArea.isRemoved {
            AProductPlantType.toPlantMRPArea = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantMRPArea")
        }
        if !AProductPlantType.toPlantQualityMgmt.isRemoved {
            AProductPlantType.toPlantQualityMgmt = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantQualityMgmt")
        }
        if !AProductPlantType.toPlantSales.isRemoved {
            AProductPlantType.toPlantSales = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantSales")
        }
        if !AProductPlantType.toPlantStorage.isRemoved {
            AProductPlantType.toPlantStorage = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantStorage")
        }
        if !AProductPlantType.toPlantText.isRemoved {
            AProductPlantType.toPlantText = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_PlantText")
        }
        if !AProductPlantType.toProdPlantInternationalTrade.isRemoved {
            AProductPlantType.toProdPlantInternationalTrade = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProdPlantInternationalTrade")
        }
        if !AProductPlantType.toProductPlantCosting.isRemoved {
            AProductPlantType.toProductPlantCosting = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductPlantCosting")
        }
        if !AProductPlantType.toProductPlantForecast.isRemoved {
            AProductPlantType.toProductPlantForecast = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductPlantForecast")
        }
        if !AProductPlantType.toProductPlantProcurement.isRemoved {
            AProductPlantType.toProductPlantProcurement = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductPlantProcurement")
        }
        if !AProductPlantType.toProductSupplyPlanning.isRemoved {
            AProductPlantType.toProductSupplyPlanning = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductSupplyPlanning")
        }
        if !AProductPlantType.toProductWorkScheduling.isRemoved {
            AProductPlantType.toProductWorkScheduling = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductWorkScheduling")
        }
        if !AProductPlantType.toStorageLocation.isRemoved {
            AProductPlantType.toStorageLocation = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_StorageLocation")
        }
        if !AProductSalesDeliveryType.product.isRemoved {
            AProductSalesDeliveryType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "Product")
        }
        if !AProductSalesDeliveryType.productSalesOrg.isRemoved {
            AProductSalesDeliveryType.productSalesOrg = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesOrg")
        }
        if !AProductSalesDeliveryType.productDistributionChnl.isRemoved {
            AProductSalesDeliveryType.productDistributionChnl = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductDistributionChnl")
        }
        if !AProductSalesDeliveryType.minimumOrderQuantity.isRemoved {
            AProductSalesDeliveryType.minimumOrderQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "MinimumOrderQuantity")
        }
        if !AProductSalesDeliveryType.supplyingPlant.isRemoved {
            AProductSalesDeliveryType.supplyingPlant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SupplyingPlant")
        }
        if !AProductSalesDeliveryType.priceSpecificationProductGroup.isRemoved {
            AProductSalesDeliveryType.priceSpecificationProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "PriceSpecificationProductGroup")
        }
        if !AProductSalesDeliveryType.accountDetnProductGroup.isRemoved {
            AProductSalesDeliveryType.accountDetnProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "AccountDetnProductGroup")
        }
        if !AProductSalesDeliveryType.deliveryNoteProcMinDelivQty.isRemoved {
            AProductSalesDeliveryType.deliveryNoteProcMinDelivQty = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryNoteProcMinDelivQty")
        }
        if !AProductSalesDeliveryType.itemCategoryGroup.isRemoved {
            AProductSalesDeliveryType.itemCategoryGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ItemCategoryGroup")
        }
        if !AProductSalesDeliveryType.deliveryQuantityUnit.isRemoved {
            AProductSalesDeliveryType.deliveryQuantityUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryQuantityUnit")
        }
        if !AProductSalesDeliveryType.deliveryQuantity.isRemoved {
            AProductSalesDeliveryType.deliveryQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryQuantity")
        }
        if !AProductSalesDeliveryType.productSalesStatus.isRemoved {
            AProductSalesDeliveryType.productSalesStatus = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesStatus")
        }
        if !AProductSalesDeliveryType.productSalesStatusValidityDate.isRemoved {
            AProductSalesDeliveryType.productSalesStatusValidityDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesStatusValidityDate")
        }
        if !AProductSalesDeliveryType.salesMeasureUnit.isRemoved {
            AProductSalesDeliveryType.salesMeasureUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SalesMeasureUnit")
        }
        if !AProductSalesDeliveryType.isMarkedForDeletion.isRemoved {
            AProductSalesDeliveryType.isMarkedForDeletion = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "IsMarkedForDeletion")
        }
        if !AProductSalesDeliveryType.productHierarchy.isRemoved {
            AProductSalesDeliveryType.productHierarchy = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductHierarchy")
        }
        if !AProductSalesDeliveryType.firstSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.firstSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FirstSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.secondSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.secondSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SecondSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.thirdSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.thirdSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ThirdSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.fourthSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.fourthSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FourthSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.fifthSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.fifthSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FifthSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.minimumMakeToOrderOrderQty.isRemoved {
            AProductSalesDeliveryType.minimumMakeToOrderOrderQty = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "MinimumMakeToOrderOrderQty")
        }
        if !AProductSalesDeliveryType.toSalesTax.isRemoved {
            AProductSalesDeliveryType.toSalesTax = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "to_SalesTax")
        }
        if !AProductSalesDeliveryType.toSalesText.isRemoved {
            AProductSalesDeliveryType.toSalesText = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "to_SalesText")
        }
        if !AProductType.product.isRemoved {
            AProductType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Product")
        }
        if !AProductType.productType.isRemoved {
            AProductType.productType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductType")
        }
        if !AProductType.crossPlantStatus.isRemoved {
            AProductType.crossPlantStatus = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantStatus")
        }
        if !AProductType.crossPlantStatusValidityDate.isRemoved {
            AProductType.crossPlantStatusValidityDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantStatusValidityDate")
        }
        if !AProductType.creationDate.isRemoved {
            AProductType.creationDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CreationDate")
        }
        if !AProductType.createdByUser.isRemoved {
            AProductType.createdByUser = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CreatedByUser")
        }
        if !AProductType.lastChangeDate.isRemoved {
            AProductType.lastChangeDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangeDate")
        }
        if !AProductType.lastChangedByUser.isRemoved {
            AProductType.lastChangedByUser = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangedByUser")
        }
        if !AProductType.lastChangeDateTime.isRemoved {
            AProductType.lastChangeDateTime = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangeDateTime")
        }
        if !AProductType.isMarkedForDeletion.isRemoved {
            AProductType.isMarkedForDeletion = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsMarkedForDeletion")
        }
        if !AProductType.productOldID.isRemoved {
            AProductType.productOldID = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductOldID")
        }
        if !AProductType.grossWeight.isRemoved {
            AProductType.grossWeight = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "GrossWeight")
        }
        if !AProductType.purchaseOrderQuantityUnit.isRemoved {
            AProductType.purchaseOrderQuantityUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "PurchaseOrderQuantityUnit")
        }
        if !AProductType.sourceOfSupply.isRemoved {
            AProductType.sourceOfSupply = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SourceOfSupply")
        }
        if !AProductType.weightUnit.isRemoved {
            AProductType.weightUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WeightUnit")
        }
        if !AProductType.netWeight.isRemoved {
            AProductType.netWeight = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "NetWeight")
        }
        if !AProductType.countryOfOrigin.isRemoved {
            AProductType.countryOfOrigin = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CountryOfOrigin")
        }
        if !AProductType.competitorID.isRemoved {
            AProductType.competitorID = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CompetitorID")
        }
        if !AProductType.productGroup.isRemoved {
            AProductType.productGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductGroup")
        }
        if !AProductType.baseUnit.isRemoved {
            AProductType.baseUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "BaseUnit")
        }
        if !AProductType.itemCategoryGroup.isRemoved {
            AProductType.itemCategoryGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ItemCategoryGroup")
        }
        if !AProductType.productHierarchy.isRemoved {
            AProductType.productHierarchy = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductHierarchy")
        }
        if !AProductType.division.isRemoved {
            AProductType.division = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Division")
        }
        if !AProductType.varblPurOrdUnitIsActive.isRemoved {
            AProductType.varblPurOrdUnitIsActive = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "VarblPurOrdUnitIsActive")
        }
        if !AProductType.volumeUnit.isRemoved {
            AProductType.volumeUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "VolumeUnit")
        }
        if !AProductType.materialVolume.isRemoved {
            AProductType.materialVolume = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaterialVolume")
        }
        if !AProductType.anpCode.isRemoved {
            AProductType.anpCode = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ANPCode")
        }
        if !AProductType.brand.isRemoved {
            AProductType.brand = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Brand")
        }
        if !AProductType.procurementRule.isRemoved {
            AProductType.procurementRule = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProcurementRule")
        }
        if !AProductType.validityStartDate.isRemoved {
            AProductType.validityStartDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ValidityStartDate")
        }
        if !AProductType.lowLevelCode.isRemoved {
            AProductType.lowLevelCode = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LowLevelCode")
        }
        if !AProductType.prodNoInGenProdInPrepackProd.isRemoved {
            AProductType.prodNoInGenProdInPrepackProd = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProdNoInGenProdInPrepackProd")
        }
        if !AProductType.serialIdentifierAssgmtProfile.isRemoved {
            AProductType.serialIdentifierAssgmtProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialIdentifierAssgmtProfile")
        }
        if !AProductType.sizeOrDimensionText.isRemoved {
            AProductType.sizeOrDimensionText = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SizeOrDimensionText")
        }
        if !AProductType.industryStandardName.isRemoved {
            AProductType.industryStandardName = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IndustryStandardName")
        }
        if !AProductType.productStandardID.isRemoved {
            AProductType.productStandardID = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductStandardID")
        }
        if !AProductType.internationalArticleNumberCat.isRemoved {
            AProductType.internationalArticleNumberCat = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "InternationalArticleNumberCat")
        }
        if !AProductType.productIsConfigurable.isRemoved {
            AProductType.productIsConfigurable = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductIsConfigurable")
        }
        if !AProductType.isBatchManagementRequired.isRemoved {
            AProductType.isBatchManagementRequired = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsBatchManagementRequired")
        }
        if !AProductType.externalProductGroup.isRemoved {
            AProductType.externalProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ExternalProductGroup")
        }
        if !AProductType.crossPlantConfigurableProduct.isRemoved {
            AProductType.crossPlantConfigurableProduct = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantConfigurableProduct")
        }
        if !AProductType.serialNoExplicitnessLevel.isRemoved {
            AProductType.serialNoExplicitnessLevel = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialNoExplicitnessLevel")
        }
        if !AProductType.productManufacturerNumber.isRemoved {
            AProductType.productManufacturerNumber = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductManufacturerNumber")
        }
        if !AProductType.manufacturerNumber.isRemoved {
            AProductType.manufacturerNumber = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ManufacturerNumber")
        }
        if !AProductType.manufacturerPartProfile.isRemoved {
            AProductType.manufacturerPartProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ManufacturerPartProfile")
        }
        if !AProductType.qltyMgmtInProcmtIsActive.isRemoved {
            AProductType.qltyMgmtInProcmtIsActive = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QltyMgmtInProcmtIsActive")
        }
        if !AProductType.changeNumber.isRemoved {
            AProductType.changeNumber = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ChangeNumber")
        }
        if !AProductType.materialRevisionLevel.isRemoved {
            AProductType.materialRevisionLevel = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaterialRevisionLevel")
        }
        if !AProductType.handlingIndicator.isRemoved {
            AProductType.handlingIndicator = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HandlingIndicator")
        }
        if !AProductType.warehouseProductGroup.isRemoved {
            AProductType.warehouseProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WarehouseProductGroup")
        }
        if !AProductType.warehouseStorageCondition.isRemoved {
            AProductType.warehouseStorageCondition = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WarehouseStorageCondition")
        }
        if !AProductType.standardHandlingUnitType.isRemoved {
            AProductType.standardHandlingUnitType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "StandardHandlingUnitType")
        }
        if !AProductType.serialNumberProfile.isRemoved {
            AProductType.serialNumberProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialNumberProfile")
        }
        if !AProductType.adjustmentProfile.isRemoved {
            AProductType.adjustmentProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "AdjustmentProfile")
        }
        if !AProductType.preferredUnitOfMeasure.isRemoved {
            AProductType.preferredUnitOfMeasure = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "PreferredUnitOfMeasure")
        }
        if !AProductType.isPilferable.isRemoved {
            AProductType.isPilferable = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsPilferable")
        }
        if !AProductType.isRelevantForHzdsSubstances.isRemoved {
            AProductType.isRelevantForHzdsSubstances = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsRelevantForHzdsSubstances")
        }
        if !AProductType.quarantinePeriod.isRemoved {
            AProductType.quarantinePeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QuarantinePeriod")
        }
        if !AProductType.timeUnitForQuarantinePeriod.isRemoved {
            AProductType.timeUnitForQuarantinePeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "TimeUnitForQuarantinePeriod")
        }
        if !AProductType.qualityInspectionGroup.isRemoved {
            AProductType.qualityInspectionGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QualityInspectionGroup")
        }
        if !AProductType.authorizationGroup.isRemoved {
            AProductType.authorizationGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "AuthorizationGroup")
        }
        if !AProductType.handlingUnitType.isRemoved {
            AProductType.handlingUnitType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HandlingUnitType")
        }
        if !AProductType.hasVariableTareWeight.isRemoved {
            AProductType.hasVariableTareWeight = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HasVariableTareWeight")
        }
        if !AProductType.maximumPackagingLength.isRemoved {
            AProductType.maximumPackagingLength = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingLength")
        }
        if !AProductType.maximumPackagingWidth.isRemoved {
            AProductType.maximumPackagingWidth = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingWidth")
        }
        if !AProductType.maximumPackagingHeight.isRemoved {
            AProductType.maximumPackagingHeight = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingHeight")
        }
        if !AProductType.unitForMaxPackagingDimensions.isRemoved {
            AProductType.unitForMaxPackagingDimensions = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "UnitForMaxPackagingDimensions")
        }
        if !AProductType.yy1ProductTestPRD.isRemoved {
            AProductType.yy1ProductTestPRD = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "YY1_ProductTest_PRD")
        }
        if !AProductType.yy1SaleableProductPRD.isRemoved {
            AProductType.yy1SaleableProductPRD = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "YY1_SaleableProduct_PRD")
        }
        if !AProductType.toDescription.isRemoved {
            AProductType.toDescription = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Description")
        }
        if !AProductType.toPlant.isRemoved {
            AProductType.toPlant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Plant")
        }
        if !AProductType.toProductBasicText.isRemoved {
            AProductType.toProductBasicText = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductBasicText")
        }
        if !AProductType.toProductInspectionText.isRemoved {
            AProductType.toProductInspectionText = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductInspectionText")
        }
        if !AProductType.toProductSales.isRemoved {
            AProductType.toProductSales = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductSales")
        }
        if !AProductType.toProductSalesTax.isRemoved {
            AProductType.toProductSalesTax = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductSalesTax")
        }
        if !AProductType.toProductStorage.isRemoved {
            AProductType.toProductStorage = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductStorage")
        }
        if !AProductType.toProductUnitsOfMeasure.isRemoved {
            AProductType.toProductUnitsOfMeasure = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductUnitsOfMeasure")
        }
        if !AProductType.toSalesDelivery.isRemoved {
            AProductType.toSalesDelivery = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_SalesDelivery")
        }
        if !AProductType.toValuation.isRemoved {
            AProductType.toValuation = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Valuation")
        }
    }
}
