--Create State Wise Population table
CREATE TABLE #StateWisePopulation(
State_name varchar(50),
Tot_Population int,
)
--Add values using stored procedure
INSERT INTO #StateWisePopulation(State_name,Tot_Population)
EXEC StateWisePop @columnName = District_population
----------------------------------------------------
-- Create State Average Population and District Count table

Create TABLE #StateAvgPopulation(
State_name varchar(50),
Avg_pop int,
District_Count int
)
-- Add values using stored procedure
INSERT INTO #StateAvgPopulation(State_name,Avg_pop,District_Count)
EXEC StateAvg @columnName = District_population

-- Joining the above two tables
CREATE TABLE StateTable(
State_name varchar(50),
Tot_Population int,
Avg_pop int,
District_Count int
)
-- joining Total,average and dsitrict count into one table
INSERT INTO StateTable(State_name,Tot_Population,Avg_pop,District_Count)
SELECT #StateWisePopulation.State_name,#StateWisePopulation.Tot_Population,#StateAvgPopulation.Avg_pop,#StateAvgPopulation.District_Count
FROM #StateWisePopulation
INNER JOIN #StateAvgPopulation ON #StateWisePopulation.State_name = #StateAvgPopulation.State_name
ORDER BY #StateWisePopulation.State_name

SELECT * FROM StateTable
