CREATE PROCEDURE dbo.UpdateDimGeoLocation
    @GeoLocationKey INT,
    @CountryCode NVARCHAR(5),
    @Country NVARCHAR(50),
    @StateCode NVARCHAR(5),
    @State NVARCHAR(50),
    @NumCustomers INT
AS
BEGIN
    IF NOT EXISTS (
        SELECT GeoLocationSK FROM dbo.DimGeoLocation WHERE GeoLocationKey = @GeoLocationKey
    )
    BEGIN
        INSERT INTO dbo.DimGeoLocation (
            GeoLocationKey, CountryCode, Country, StateCode, State, NumCustomers
        )
        VALUES (
            @GeoLocationKey, @CountryCode, @Country, @StateCode, @State, @NumCustomers
        );
    END;
    ELSE
    BEGIN
        UPDATE dbo.DimGeoLocation
        SET CountryCode = @CountryCode,
            Country = @Country,
            StateCode = @StateCode,
            State = @State,
            NumCustomers = @NumCustomers
        WHERE GeoLocationKey = @GeoLocationKey;
    END;
END;
