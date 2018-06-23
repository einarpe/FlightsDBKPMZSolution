CREATE TABLE [dbo].[DimCarrier]
(
	[CarrierKey] INT NOT NULL identity(1,1) PRIMARY KEY, 
    [Code] VARCHAR(16) NOT NULL UNIQUE, 
    [Description] VARCHAR(128)  NOT NULL
)
