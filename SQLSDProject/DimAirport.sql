CREATE TABLE [dbo].[DimAirport]
(
	[AirportKey] INT NOT NULL identity(1,1) PRIMARY KEY, 
    [IATA] VARCHAR(16) NOT NULL UNIQUE, 
    [Name] NVARCHAR(128) NOT NULL, 
	[State] NVARCHAR(64) NOT NULL,
    [City] NVARCHAR(128) NOT NULL,
    [Country] NVARCHAR(64) NOT NULL, 
    [Latitude] NUMERIC(14,10) NOT NULL, 
    [Longitude] NUMERIC(14,10) NOT NULL, 
    [PositionString] as (
		concat(Latitude, ', ', Longitude)
	)
)
