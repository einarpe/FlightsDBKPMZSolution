CREATE TABLE [dbo].[FactFlights]
(
	[Id] INT not null identity(1,1) primary key,
	DepTimeKey int, 
	DepTime char(6), 
	CRSDepTime char(6), 
	ArrTime char(6),
	CRSArrTime char(6),
	CarrierCodeKey int,
	PlaneKey int,
	OriginKey int,
	DestKey int,
	FlightNum smallint,
	ActualElapsedTime smallint,
	CRSElapsedTime smallint,
	AirTime smallint,
	ArrDelay smallint,
	DepDelay smallint,
	Distance real,
	TaxiIn smallint,
	TaxiOut smallint,
	Cancelled varchar(4),
	CancellationCode varchar(4),
	Diverted varchar(4),
	CarrierDelay smallint,
	WeatherDelay smallint,
	NASDelay smallint,
	SecurityDelay smallint,
	LateAircraftDelay smallint
	/* 
	-- chyba raczej niepotrzebne, troche komplikuje logike niestety
	, 
    CONSTRAINT [FK_FactFlights_ToDimDate] FOREIGN KEY (DepTimeKey) REFERENCES DimDate([DateKey]),
	CONSTRAINT [FK_FactFlights_ToDimCarrier] FOREIGN KEY (CarrierCodeKey) REFERENCES DimCarrier([CarrierKey]),
	CONSTRAINT [FK_FactFlights_ToDimPlane] FOREIGN KEY (PlaneKey) REFERENCES DimPlane([PlaneKey]),
	CONSTRAINT [FK_FactFlights_ToDimAirport_1] FOREIGN KEY (OriginKey) REFERENCES DimAirport([AirportKey]),
	CONSTRAINT [FK_FactFlights_ToDimAirport_2] FOREIGN KEY (DestKey) REFERENCES DimAirport([AirportKey])
	*/
)
