DROP TABLE IF EXISTS DimCurrencyExchange;
CREATE TABLE DimCurrencyExchange (
    CurrencySK INT IDENTITY(1,1) PRIMARY KEY,
    Date DATETIME,
    FromCurrency NVARCHAR(10),
    ToCurrency NVARCHAR(10),
    ExchangeRate FLOAT
);
