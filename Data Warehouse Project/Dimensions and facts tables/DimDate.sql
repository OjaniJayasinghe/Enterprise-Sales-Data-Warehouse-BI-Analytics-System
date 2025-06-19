--DROP TABLE IF EXISTS DimDate;

CREATE TABLE DimDate (
	[DateSK] INT IDENTITY(1,1) PRIMARY KEY,
    [Date] DATETIME,
    [DateKey] INT NULL,
    [Year] INT NULL,
    [Year Quarter] NVARCHAR(30) NULL,
    [Year Quarter Number] INT NULL,
    [Quarter] VARCHAR(2) NULL,
    [Year Month] NVARCHAR(30) NULL,
    [Year Month Short] NVARCHAR(30) NULL,
    [Year Month Number] INT NULL,
    [Month] NVARCHAR(30) NULL,
    [Month Short] NVARCHAR(30) NULL,
    [Month Number] INT NULL,
    [Day of Week] NVARCHAR(30) NULL,
    [Day of Week Short] NVARCHAR(30) NULL,
    [Day of Week Number] INT NULL,
    [Working Day] BIT NULL,
    [Working Day Number] INT NULL
);
