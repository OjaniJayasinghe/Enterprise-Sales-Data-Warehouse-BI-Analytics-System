DROP TABLE IF EXISTS DimStore;
CREATE TABLE DimStore (
    StoreSK INT IDENTITY(1,1) PRIMARY KEY,
    StoreKey INT,
    StoreCode NVARCHAR(50),
    Country NVARCHAR(50),
    State NVARCHAR(50),
    Name NVARCHAR(100),
    SquareMeters INT,
    OpenDate NVARCHAR(10),
    CloseDate NVARCHAR(10),
    Status NVARCHAR(50)
);
