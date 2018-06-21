CREATE TABLE [dbo].[DimDate]
(
	[DateKey] INT NOT NULL PRIMARY KEY, 
    [DateTimeValue] DATETIME2 NOT NULL, 
    [Year] SMALLINT NOT NULL, 
    [Month] TINYINT NOT NULL, 
    [Day] TINYINT NOT NULL, 
	[DayOfWeek] TINYINT NOT NULL,
    [Hour] TINYINT NOT NULL, 
    [Minute] TINYINT NOT NULL, 
    [Second] TINYINT NOT NULL, 
    [ShortDateString] CHAR(10) NOT NULL, 
    [LongDateString] CHAR(19) NOT NULL,
	[DayOfWeekString] as 
		(case [DayOfWeek]
			when 1 then 'Monday'
			when 2 then 'Tuesday'
			when 3 then 'Wednesday'
			when 4 then 'Thursday'
			when 5 then 'Friday'
			when 6 then 'Saturday'
			when 7 then 'Sunday'
		end) 
)
