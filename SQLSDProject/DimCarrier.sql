CREATE TABLE [dbo].[DimCarrier]
(
	[CarrierKey] INT NOT NULL PRIMARY KEY, 
    [Code] VARCHAR(16) NOT NULL, 
    [Description] VARCHAR(128) NULL
)
