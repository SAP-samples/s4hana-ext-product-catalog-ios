import Foundation
import SAPOData

class QueryDefinitionHelper {
    
    // MARK: - Queries for Master View
    
    /**
    *   Prepares the OData Query for the product information in the Main View.
    *   - returns: Defined OData Query
    */
    static func initProductMainViewQuery() -> DataQuery {
           
        let productQuery = DataQuery()
            .select(AProductType.product,
                    AProductType.productType,
                    AProductType.productGroup,
                    AProductType.toDescription,
                    AProductType.toPlant,
                    AProductType.toSalesDelivery)
            .expand(AProductType.toDescription,
                    AProductType.toPlant,
                    AProductType.toSalesDelivery)
           
           return productQuery
       }
        
    // MARK: - Queries for Detail View
    
    /**
     *   Prepares the OData Query for the product details with a filter on a certain product
     *   - parameter filterForProductId: Filters the Query Request by the selected Product ID
     *   - returns: Defined OData Query
     */
    static func initFilteredProductQuery(queryFilterForProductId: String) -> DataQuery {
        
        // Define the queries, which retrieve only the required properties, filtered on a certain product
        let languageDetailQuery = QueryDefinitionHelper.initLanguageDetailsQuery(queryFilterForProductId: queryFilterForProductId)
        let plantsQuery = QueryDefinitionHelper.initPlantDetailsQuery(queryFilterForProductId: queryFilterForProductId)
        let salesDeliveryQuery = QueryDefinitionHelper.initSalesDeliveryQuery(queryFilterForProductId: queryFilterForProductId)
        
        let selectedProductQuery = DataQuery()
            .select(AProductType.product,
                    AProductType.productType,
                    AProductType.productGroup,
                    AProductType.baseUnit,
                    AProductType.brand,
                    AProductType.countryOfOrigin,
                    AProductType.productManufacturerNumber,
                    AProductType.grossWeight,
                    AProductType.sizeOrDimensionText,
                    AProductType.createdByUser,
                    AProductType.creationDate,
                    AProductType.lastChangeDate,
                    AProductType.lastChangedByUser,
                    AProductType.toDescription,
                    AProductType.toPlant,
                    AProductType.toSalesDelivery)
            .filter(AProductType.product.equal(queryFilterForProductId))
            .expand(AProductType.toDescription, withQuery: languageDetailQuery)
            .expand(AProductType.toPlant, withQuery: plantsQuery)
            .expand(AProductType.toSalesDelivery, withQuery: salesDeliveryQuery)
        
        return selectedProductQuery
    }
    
    /**
     *   Prepares the OData Query for the language description with a filter on a certain product
     *   - parameter filterForProductId: Filters the Query Request by the selected Product ID
     *   - returns: Defined OData Query
     */
    static func initLanguageDetailsQuery(queryFilterForProductId: String) -> DataQuery {
        
        let languageDetailQuery = DataQuery()
            .select(AProductDescriptionType.product,
                    AProductDescriptionType.productDescription,
                    AProductDescriptionType.language)
            .filter(AProductDescriptionType.product.equal(queryFilterForProductId))
        
        return languageDetailQuery
    }
    
    /**
     *   Prepares the OData Query for the plant details with a filter on a certain product
     *   - parameter filterForProductId: Filters the Query Request by the selected Product ID
     *   - returns: Defined OData Query
     */
    static func initPlantDetailsQuery(queryFilterForProductId: String) -> DataQuery {
        
        let plantsQuery = DataQuery()
            .select(AProductPlantType.plant,
                    AProductPlantType.product,
                    AProductPlantType.profitCenter,
                    AProductPlantType.purchasingGroup,
                    AProductPlantType.procurementType,
                    AProductPlantType.maintenanceStatusName,
                    AProductPlantType.maximumLotSizeQuantity,
                    AProductPlantType.productionInvtryManagedLoc,
                    AProductPlantType.stockInTransferQuantity,
                    AProductPlantType.stockInTransitQuantity,
                    AProductPlantType.periodType,
                    AProductPlantType.fiscalMonthCurrentPeriod,
                    AProductPlantType.fiscalYearCurrentPeriod,
                    AProductPlantType.mrpResponsible,
                    AProductPlantType.mrpType)
            .filter(AProductPlantType.product.equal(queryFilterForProductId))
        
        return plantsQuery
    }
    
    /**
     *   Prepares the OData Query for the sales delivery details with a filter on a certain product
     *   - parameter filterForProductId: Filters the Query Request by the selected Product ID
     *   - returns: Defined OData Query
     */
    static func initSalesDeliveryQuery(queryFilterForProductId: String) -> DataQuery {
        
        let salesDeliveryQuery = DataQuery()
            .select(AProductSalesDeliveryType.productDistributionChnl,
                    AProductSalesDeliveryType.productHierarchy,
                    AProductSalesDeliveryType.productSalesOrg,
                    AProductSalesDeliveryType.productSalesStatus,
                    AProductSalesDeliveryType.productSalesStatusValidityDate,
                    AProductSalesDeliveryType.salesMeasureUnit,
                    AProductSalesDeliveryType.supplyingPlant,
                    AProductSalesDeliveryType.deliveryQuantity,
                    AProductSalesDeliveryType.deliveryQuantityUnit,
                    AProductSalesDeliveryType.fifthSalesSpecProductGroup)
            .filter(AProductSalesDeliveryType.product.equal(queryFilterForProductId))
        
        return salesDeliveryQuery
    }
    
}

