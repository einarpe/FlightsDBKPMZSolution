CREATE TABLE [dbo].[DimPlane]
(
	/* tailnum,type,manufacturer,issue_date,model,status,aircraft_type,engine_type,year */
	[PlaneKey] INT NOT NULL identity(1,1) PRIMARY KEY,
	[TailNum] varchar(16) not null UNIQUE,
	[Type] varchar(64),
	[Manufacturer] varchar(32),
	[IssueDate] date,
	[Model] varchar(32),
	[Status] varchar(32),
	[AircraftType] varchar(64),
	[EngineType] varchar(32),
	[Year] int

)
