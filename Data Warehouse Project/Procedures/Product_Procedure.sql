CREATE PROCEDURE dbo.UpdateDimProduct
    @ProductKey INT,
    @ProductCode NVARCHAR(50),
    @ProductName NVARCHAR(100),
    @Manufacturer NVARCHAR(50),
    @Brand NVARCHAR(50),
    @Color NVARCHAR(30),
    @WeightUnitMeasure NVARCHAR(10),
    @Weight FLOAT,
    @UnitCost MONEY,
    @UnitPrice MONEY,
    @SubcategoryCode NVARCHAR(50),
    @Subcategory NVARCHAR(50),
    @CategoryCode NVARCHAR(50),
    @Category NVARCHAR(50)
AS 
BEGIN
    IF NOT EXISTS (
        SELECT ProductSK FROM dbo.DimProduct WHERE ProductKey = @ProductKey
    )
    BEGIN
        INSERT INTO dbo.DimProduct (
            ProductKey, ProductCode, ProductName, Manufacturer, Brand, Color, WeightUnitMeasure, Weight,
            UnitCost, UnitPrice, SubcategoryCode, Subcategory, CategoryCode, Category
        )
        VALUES (
            @ProductKey, @ProductCode, @ProductName, @Manufacturer, @Brand, @Color, @WeightUnitMeasure, @Weight,
            @UnitCost, @UnitPrice, @SubcategoryCode, @Subcategory, @CategoryCode, @Category
        );
    END;
    ELSE
    BEGIN
        UPDATE dbo.DimProduct
        SET ProductCode = @ProductCode,
            ProductName = @ProductName,
            Manufacturer = @Manufacturer,
            Brand = @Brand,
            Color = @Color,
            WeightUnitMeasure = @WeightUnitMeasure,
            Weight = @Weight,
            UnitCost = @UnitCost,
            UnitPrice = @UnitPrice,
            SubcategoryCode = @SubcategoryCode,
            Subcategory = @Subcategory,
            CategoryCode = @CategoryCode,
            Category = @Category
        WHERE ProductKey = @ProductKey;
    END;
END;
