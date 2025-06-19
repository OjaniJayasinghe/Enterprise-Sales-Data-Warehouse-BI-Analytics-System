CREATE PROCEDURE dbo.UpdateDimStore
    @StoreKey INT,
    @StoreCode NVARCHAR(50),
    @Country NVARCHAR(50),
    @State NVARCHAR(50),
    @Name NVARCHAR(100),
    @SquareMeters INT,
    @OpenDate NVARCHAR(10),
    @CloseDate NVARCHAR(10),
    @Status NVARCHAR(50)
AS
BEGIN
    IF NOT EXISTS (
        SELECT StoreSK FROM dbo.DimStore WHERE StoreKey = @StoreKey
    )
    BEGIN
        INSERT INTO dbo.DimStore (
            StoreKey, StoreCode, Country, State, Name, SquareMeters, OpenDate, CloseDate, Status
        )
        VALUES (
            @StoreKey, @StoreCode, @Country, @State, @Name, @SquareMeters, @OpenDate, @CloseDate, @Status
        );
    END;
    ELSE
    BEGIN
        UPDATE dbo.DimStore
        SET StoreCode = @StoreCode,
            Country = @Country,
            State = @State,
            Name = @Name,
            SquareMeters = @SquareMeters,
            OpenDate = @OpenDate,
            CloseDate = @CloseDate,
            Status = @Status
        WHERE StoreKey = @StoreKey;
    END;
END;
