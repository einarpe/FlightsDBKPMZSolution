use master
go

if exists(select * from sys.databases where name = 'FlightsDB')
  drop database FlightsDB
go

create database FlightsDB
go

use FlightsDB
go

create proc fillUpDimDate as
begin
	begin tran
		truncate table DimDate

		declare @dt date = '1987-01-01'
		while @dt < GETDATE()
		begin
			insert into DimDate(DateValue, Year, Month, Day, DayOfWeek, ShortDateString) 
			values (@dt, year(@dt), month(@dt), day(@dt), datepart(dw, @dt), convert(char(10), @dt, 126))

			set @dt = DATEADD(dd, 1, @dt)
		end
	commit
end
go

create proc fillUpDimUnknownMembers as 
begin
	begin tran
		set identity_insert DimAirport on
		insert into DimAirport(AirportKey, IATA, Name, State, City, Country, Latitude, Longitude)
		values (-1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0.00, 0.00)
		set identity_insert DimAirport off

		set identity_insert DimCarrier on
		insert into DimCarrier(CarrierKey, Code, Description)
		values (-1, 'N/A', 'N/A')
		set identity_insert DimCarrier off

		set identity_insert DimPlane on
		insert into DimPlane(PlaneKey, TailNum, Type, Manufacturer, IssueDate, Model, Status, AircraftType, EngineType, Year)
		values (-1, 'N/A', 'N/A', 'N/A', '1900-01-01', 'N/A', 'N/A', 'N/A', 'N/A', -1)
		set identity_insert DimPlane off

		set identity_insert DimDate on
		insert into DimDate(DateKey, DateValue, Year, Month, Day, DayOfWeek, ShortDateString)
		values (-1, '1900-01-01', 1900, 1, 1, 1, 'N/A')
		set identity_insert DimDate off

	commit
end
go

CREATE SCHEMA [raporty]
go

/* 
TODO
  24. W schemacie dodać 4-5 zapytań analitycznych do hurtowni które podsumowują załadowane dane w różnych przekrojach. W zapytaniach użyć funkcji okienkowych.
*/



exec fillUpDimDate
go
