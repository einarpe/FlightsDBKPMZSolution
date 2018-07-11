CREATE TABLE [dbo].[DimDate]
(
	[DateKey] int NOT NULL identity(1,1) PRIMARY KEY, 
	[DateValue] DATETIME2 NOT NULL UNIQUE,
    [Year] SMALLINT NOT NULL, 
    [Month] SMALLINT NOT NULL, 
    [Day] SMALLINT NOT NULL, 
	[DayOfWeek] TINYINT NOT NULL,
    [ShortDateString] CHAR(10) NOT NULL,
	[DayOfWeekString] as 
		(case [DayOfWeek]
			when 2 then 'Monday'
			when 3 then 'Tuesday'
			when 4 then 'Wednesday'
			when 5 then 'Thursday'
			when 6 then 'Friday'
			when 7 then 'Saturday'
			when 1 then 'Sunday'
		end) 
)
