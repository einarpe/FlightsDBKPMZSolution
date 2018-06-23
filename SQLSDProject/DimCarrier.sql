CREATE TABLE [dbo].[DimCarrier]
(
	[CarrierKey] INT NOT NULL identity(1,1) PRIMARY KEY, 
    [Code] NVARCHAR(16) NOT NULL UNIQUE, 
    [Description] NVARCHAR(128)  NOT NULL
)
