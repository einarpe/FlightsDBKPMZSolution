CREATE PROCEDURE [dbo].[updateFactFlightsUnknowns]
AS
	begin tran
		update FactFlights set DepTimeKey=-1 where DepTimeKey is null
		update FactFlights set CarrierCodeKey=-1 where CarrierCodeKey is null
		update FactFlights set PlaneKey=-1 where PlaneKey is null
		update FactFlights set OriginKey=-1 where OriginKey is null
		update FactFlights set DestKey=-1 where DestKey is null
	commit
RETURN 0
