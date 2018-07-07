CREATE PROCEDURE [dbo].[fillUpDimDate]
AS
	set xact_abort on
	set nocount on

	begin tran
		truncate table DimDate

		declare @dt date = '1987-01-01'
		while @dt < GETDATE()
		begin
			insert into DimDate(DateValue, Year, Month, Day, DayOfWeek, ShortDateString) 
			values (@dt, year(@dt), month(@dt), day(@dt), datepart(dw, @dt), convert(char(10), @dt, 126))

			set @dt = DATEADD(dd, 1, @dt)
		end

	commit
RETURN 0
