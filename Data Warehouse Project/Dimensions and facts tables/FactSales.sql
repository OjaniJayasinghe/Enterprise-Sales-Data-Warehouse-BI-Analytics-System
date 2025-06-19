DROP TABLE IF EXISTS FactSales;
CREATE TABLE FactSales (
    SalesSK INT IDENTITY(1,1) PRIMARY KEY,
    OrderKey INT,
    CustomerSK INT FOREIGN KEY REFERENCES DimCustomer(CustomerSK),
    ProductSK INT FOREIGN KEY REFERENCES DimProduct(ProductSK),
    StoreSK INT FOREIGN KEY REFERENCES DimStore(StoreSK),
    GeoLocationSK INT FOREIGN KEY REFERENCES DimGeoLocation(GeoLocationSK),
    DateSK INT FOREIGN KEY REFERENCES DimDate(DateSK),
    CurrencySK INT FOREIGN KEY REFERENCES DimCurrencyExchange(CurrencySK),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    NetPrice DECIMAL(10,2),
    UnitCost DECIMAL(10,2),
    TotalAmount AS (Quantity * UnitPrice) PERSISTED  -- Corrected Computed Column Syntax
);
