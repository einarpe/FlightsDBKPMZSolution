CREATE TABLE [dbo].[DimAirport]
(
	[AirportKey] INT NOT NULL PRIMARY KEY, 
    [IATA] VARCHAR(16) NOT NULL, 
    [Name] VARCHAR(128) NOT NULL, 
    [City] VARCHAR(128) NOT NULL, 
    [Country] VARCHAR(64) NOT NULL, 
    [Latitude] REAL NULL, 
    [Longitude] REAL NULL, 
    [PositionString] as (
		concat(Latitude, ', ', Longitude)
	)
)
