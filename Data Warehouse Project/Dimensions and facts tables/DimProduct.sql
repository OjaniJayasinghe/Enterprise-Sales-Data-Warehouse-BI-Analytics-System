DROP TABLE IF EXISTS DimProduct;
CREATE TABLE DimProduct (
    ProductSK INT IDENTITY(1,1) PRIMARY KEY,
    ProductKey INT,
    ProductCode NVARCHAR(50),
    ProductName NVARCHAR(100),
    Manufacturer NVARCHAR(50),
    Brand NVARCHAR(50),
    Color NVARCHAR(30),
    WeightUnitMeasure NVARCHAR(10),
    Weight FLOAT,
    UnitCost MONEY,
    UnitPrice MONEY,
    SubcategoryCode NVARCHAR(50),
    Subcategory NVARCHAR(50),
    CategoryCode NVARCHAR(50),
    Category NVARCHAR(50)
);
