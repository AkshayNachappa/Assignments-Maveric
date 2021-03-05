ALTER PROCEDURE StateWisePop @columnName varchar(50)
AS
BEGIN
DECLARE @sql nvarchar(max) = 'SELECT State_name, 
SUM('+@columnName+') as Tot_Population
from Census
group by State_name ';
exec sp_executesql @sql, N'' 

END

ALTER PROCEDURE StateAvg @columnName varchar(50)
AS
BEGIN
DECLARE @sql nvarchar(max) = 'SELECT State_name, 
AVG('+@columnName+') as Avg_pop,
Count(State_name) as District_Count
from Census
group by State_name'

exec sp_executesql @sql, N'' 

END

