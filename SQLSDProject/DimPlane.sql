CREATE TABLE [dbo].[DimPlane]
(
	/* tailnum,type,manufacturer,issue_date,model,status,aircraft_type,engine_type,year */
	[PlaneKey] INT NOT NULL identity(1,1) PRIMARY KEY,
	[TailNum] varchar(6) not null UNIQUE,
	[Type] nvarchar(64),
	[Manufacturer] nvarchar(32),
	[IssueDate] datetime2,
	[Model] nvarchar(32),
	[Status] nvarchar(16),
	[AircraftType] nvarchar(64),
	[EngineType] nvarchar(32),
	[Year] smallint

)
