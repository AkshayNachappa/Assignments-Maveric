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

ALTER PROCEDURE MaleOrFemale @columnName varchar(50)
--, @tableName varchar(50)
AS
BEGIN
DECLARE @sql nvarchar(max) = 'SELECT'+@columnName+', 
Case
	WHEN '+@columnName+'>1 THEN ''Male Higher''
	WHEN '+@columnName+'<1 THEN ''Female Higher''
	ELSE ''Equal''
END AS Comparison
FROM combinedGenderCount'
exec sp_executesql @sql, N'' 

END

