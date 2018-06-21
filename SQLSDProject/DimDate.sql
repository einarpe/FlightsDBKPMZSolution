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
    [LongDateString] CHAR(19) NOT NULL
)
