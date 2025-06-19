CREATE PROCEDURE dbo.UpdateDimCurrencyExchange
    @Date DATETIME,
    @FromCurrency NVARCHAR(10),
    @ToCurrency NVARCHAR(10),
    @ExchangeRate FLOAT
AS
BEGIN
    IF NOT EXISTS (
        SELECT CurrencySK FROM dbo.DimCurrencyExchange 
        WHERE Date = @Date 
        AND FromCurrency = @FromCurrency 
        AND ToCurrency = @ToCurrency
    )
    BEGIN
        INSERT INTO dbo.DimCurrencyExchange (
            Date, FromCurrency, ToCurrency, ExchangeRate
        )
        VALUES (
            @Date, @FromCurrency, @ToCurrency, @ExchangeRate
        );
    END;
    ELSE
    BEGIN
        UPDATE dbo.DimCurrencyExchange
        SET ExchangeRate = @ExchangeRate
        WHERE Date = @Date 
        AND FromCurrency = @FromCurrency 
        AND ToCurrency = @ToCurrency;
    END;
END;
