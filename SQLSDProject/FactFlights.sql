﻿CREATE TABLE [dbo].[FactFlights]
(
	[Id] INT not null identity(1,1) primary key,
	DepTime char(6), 
	DepTimeKey int, 
	CRSDepTime char(6), 
	CRSDepTimeKey int,
	ArrTime char(6),
	ArrTimeKey int ,
	CRSArrTime char(6),
	CRSArrTimeKey int,
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
)
