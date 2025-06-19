CREATE PROCEDURE dbo.UpdateDimCustomerN
    @AlternateCustomerID INT,
    @Gender NVARCHAR(10),
    @Title NVARCHAR(10),
    @GivenName NVARCHAR(50),
    @MiddleInitial NVARCHAR(5),
    @Surname NVARCHAR(50),
    @StreetAddress NVARCHAR(100),
    @City NVARCHAR(50),
    @State NVARCHAR(50),
    @StateFull NVARCHAR(50),
    @Zipcode NVARCHAR(15),
    @Country NVARCHAR(50),
    @CountryFull NVARCHAR(50),
    @Birthday NVARCHAR(27),
    @Age INT,
    @Occupation NVARCHAR(100),
    @Company NVARCHAR(100),
    @Vehicle NVARCHAR(100),
    @Latitude FLOAT,
    @Longitude FLOAT,
    @Continent NVARCHAR(50),
	@StartDate DATETIME,
	@EndDate DATETIME,
	@InsertDate DATETIME,
	@ModifiedDate DATETIME
AS 
BEGIN
    IF NOT EXISTS (
        SELECT CustomerSK FROM dbo.DimCustomer WHERE AlternateCustomerID = @AlternateCustomerID
    )
    BEGIN
        INSERT INTO dbo.DimCustomer (
            AlternateCustomerID, Gender, Title, GivenName, MiddleInitial, Surname, StreetAddress, City, State, 
            StateFull, Zipcode, Country, CountryFull, Birthday, Age, Occupation, Company, Vehicle, Latitude, Longitude, 
            Continent, StartDate, EndDate, InsertDate, ModifiedDate
        )
        VALUES (
            @AlternateCustomerID, @Gender, @Title, @GivenName, @MiddleInitial, @Surname, @StreetAddress, @City, @State, 
            @StateFull, @Zipcode, @Country, @CountryFull, @Birthday, @Age, @Occupation, @Company, @Vehicle, @Latitude, @Longitude, 
            @Continent, GETDATE(), GETDATE(), GETDATE(), GETDATE()
        );
    END;
    
    IF EXISTS (
        SELECT CustomerSK FROM dbo.DimCustomer WHERE AlternateCustomerID = @AlternateCustomerID
    )
    BEGIN
        UPDATE dbo.DimCustomer
        SET Gender = @Gender,
            Title = @Title,
            GivenName = @GivenName,
            MiddleInitial = @MiddleInitial,
            Surname = @Surname,
            StreetAddress = @StreetAddress,
            City = @City,
            State = @State,
            StateFull = @StateFull,
            Zipcode = @Zipcode,
            Country = @Country,
            CountryFull = @CountryFull,
            Birthday = @Birthday,
            Age = @Age,
            Occupation = @Occupation,
            Company = @Company,
            Vehicle = @Vehicle,
            Latitude = @Latitude,
            Longitude = @Longitude,
            Continent = @Continent,
			StartDate = GETDATE(),
			EndDate = GETDATE(),
			InsertDate = GETDATE(),
            ModifiedDate = GETDATE()
        WHERE AlternateCustomerID = @AlternateCustomerID;
    END;
END;
