CREATE PROCEDURE [dbo].[fillUpDimUnknownMembers]
AS
	set xact_abort on
	set nocount on

	begin tran
		delete from DimAirport where AirportKey=-1
		set identity_insert DimAirport on
		insert into DimAirport(AirportKey, IATA, Name, State, City, Country, Latitude, Longitude)
		values (-1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0.00, 0.00)
		set identity_insert DimAirport off

		delete from DimCarrier where CarrierKey=-1
		set identity_insert DimCarrier on
		insert into DimCarrier(CarrierKey, Code, Description)
		values (-1, 'N/A', 'N/A')
		set identity_insert DimCarrier off

		delete from DimPlane where PlaneKey=-1
		set identity_insert DimPlane on
		insert into DimPlane(PlaneKey, TailNum, Type, Manufacturer, IssueDate, Model, Status, AircraftType, EngineType, Year)
		values (-1, 'N/A', 'N/A', 'N/A', '1900-01-01', 'N/A', 'N/A', 'N/A', 'N/A', -1)
		set identity_insert DimPlane off

		delete from DimDate where DateKey=-1
		set identity_insert DimDate on
		insert into DimDate(DateKey, DateValue, Year, Month, Day, DayOfWeek, ShortDateString)
		values (-1, '1900-01-01', 1900, 1, 1, 1, 'N/A')
		set identity_insert DimDate off

	commit
RETURN 0
