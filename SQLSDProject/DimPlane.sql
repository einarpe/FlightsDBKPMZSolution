﻿CREATE TABLE [dbo].[DimPlane]
(
	/* tailnum,type,manufacturer,issue_date,model,status,aircraft_type,engine_type,year */
	[PlaneKey] INT NOT NULL PRIMARY KEY,
	[TailNum] varchar(6) not null,
	[Type] varchar(64),
	[Manufacturer] varchar(32),
	[IssueDate] datetime2,
	[Model] varchar(32),
	[Status] varchar(16),
	[AircraftType] varchar(64),
	[EngineType] varchar(32),
	[Year] smallint

)
