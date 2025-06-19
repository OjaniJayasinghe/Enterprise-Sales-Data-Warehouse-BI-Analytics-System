

--DROP TABLE IF EXISTS DimCustomer;
CREATE TABLE DimCustomer (
    
    CustomerSK INT IDENTITY(1,1) PRIMARY KEY,
    AlternateCustomerID INT NULL,
    Gender NVARCHAR(10) NULL,
    Title NVARCHAR(10) NULL,
    GivenName NVARCHAR(50) NULL,
    MiddleInitial NVARCHAR(5) NULL,
    Surname NVARCHAR(50) NULL,
    StreetAddress NVARCHAR(100) NULL,
    City NVARCHAR(50) NULL,
    State NVARCHAR(50) NULL,
    StateFull NVARCHAR(50) NULL,
    Zipcode NVARCHAR(15) NULL,
    Country NVARCHAR(50) NULL,
    CountryFull NVARCHAR(50) NULL,
    Birthday NVARCHAR(27) NULL,
    Age INT NULL,
    Occupation NVARCHAR(100) NULL,
    Company NVARCHAR(100) NULL,
    Vehicle NVARCHAR(100) NULL,
    Latitude FLOAT NULL,
    Longitude FLOAT NULL,
    Continent NVARCHAR(50) NULL,
    StartDate DATETIME NULL,
    EndDate DATETIME NULL,
    InsertDate DATETIME NULL,
    ModifiedDate DATETIME NULL
);

