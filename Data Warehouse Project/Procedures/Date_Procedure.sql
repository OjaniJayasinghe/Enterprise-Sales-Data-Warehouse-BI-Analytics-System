CREATE PROCEDURE dbo.UpdateDimDate
	@Date DATETIME,
	@DateKey int,
	@Year int,
	@YearQuarter NVARCHAR(30),
	@YearQuarterNumber int,
	@Quarter VARCHAR(30),
	@YearMonth NVARCHAR(30),
	@YearMonthShort NVARCHAR(30),
	@YearMonthNumber int,
	@Month NVARCHAR(30),
	@MonthShort NVARCHAR(30),
	@MonthNumber int,
	@DayOfWeek NVARCHAR(30),
	@DayOfWeekShort NVARCHAR(30),
	@DayOfWeekNumber int,
	@WorkingDay bit,
	@WorkingDayNumber int
	AS
	BEGIN
		IF NOT EXISTS(
			SELECT DateSK FROM dbo.DimDate WHERE Date = @Date
		)
		BEGIN
			INSERT INTO dbo.DimDate (
				Date, DateKey, Year, [Year Quarter], [Year Quarter Number],Quarter, [Year Month],[Year Month Short],[Year Month Number],
				Month,[Month Short],[Month Number],[Day of Week],[Day of Week Short],[Day of Week Number],[Working Day],[Working Day Number]
				)
				VALUES (
					@Date,@DateKey,@Year,@YearQuarter,@YearQuarterNumber,@Quarter,@YearMonth,@YearMonthShort,@YearMonthNumber,
					@Month,@MonthShort,@MonthNumber,@DayOfWeek,@DayOfWeekShort,@DayOfWeekNumber, @WorkingDay,@WorkingDayNumber
					);
				END;
				ELSE
				BEGIN
					UPDATE dbo.DimDate
					SET DateKey = @DateKey,
						Year = @Year,
						[Year Quarter] = @YearQuarter,
						[Year Quarter Number] = @YearQuarterNumber,
						Quarter = @Quarter,
						[Year Month] = @YearMonth,
						[Year Month Short] = @YearMonthShort,
						[Year Month Number] = @YearMonthNumber,
						Month = @Month,
						[Month Short] = @MonthShort,
						[Month Number] = @MonthNumber,
						[Day of Week] = @DayOfWeek,
						[Day of Week Short] = @DayOfWeekShort,
						[Day of Week Number] = @DayOfWeekNumber,
						[Working Day] = @WorkingDay,
						[Working Day Number] = @WorkingDayNumber;
					END;
				END;