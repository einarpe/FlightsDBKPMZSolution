

create proc fillUpDimDate as
begin
	declare @dt date = '1987-01-01'
	while @dt < GETDATE()
	begin
		insert into DimDate(DateValue, Year, Month, Day, DayOfWeek, ShortDateString) 
		values (@dt, year(@dt), month(@dt), day(@dt), datepart(dw, @dt), convert(char(10), @dt, 126))

		set @dt = DATEADD(dd, 1, @dt)
	end
end

go

CREATE SCHEMA [raporty]
go

/* 
TODO
  24. W schemacie dodać 4-5 zapytań analitycznych do hurtowni które podsumowują załadowane dane w różnych przekrojach. W zapytaniach użyć funkcji okienkowych.
*/



