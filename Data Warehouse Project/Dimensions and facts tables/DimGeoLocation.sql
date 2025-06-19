DROP TABLE IF EXISTS DimGeoLocation;
CREATE TABLE DimGeoLocation (
    GeoLocationSK INT IDENTITY(1,1) PRIMARY KEY,
    GeoLocationKey INT,
    CountryCode NVARCHAR(5),
    Country NVARCHAR(50),
    StateCode NVARCHAR(5),
    State NVARCHAR(50),
    NumCustomers INT
);
