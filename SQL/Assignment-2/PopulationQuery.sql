CREATE TABLE StateWisePopulation(
State_name varchar(50),
Tot_Population int,
)

INSERT INTO StateWisePopulation(State_name,Tot_Population)
EXEC StateWisePop @columnName = District_population

Create TABLE StateAvgPopulation(
State_name varchar(50),
Avg_pop int,
District_Count int
)

INSERT INTO StateAvgPopulation(State_name,Avg_pop,District_Count)
EXEC StateAvg @columnName = District_population

SELECT StateWisePopulation.State_name,StateWisePopulation.Tot_Population,StateAvgPopulation.Avg_pop,StateAvgPopulation.District_Count
FROM StateWisePopulation
INNER JOIN StateAvgPopulation ON StateWisePopulation.State_name = StateAvgPopulation.State_name
ORDER BY StateWisePopulation.State_name

CREATE TABLE StateWiseSexRatio(
    State_name VARCHAR(50),
    Male_Population int,
    Female_Population int,
    Sex_Ratio FLOAT
)

