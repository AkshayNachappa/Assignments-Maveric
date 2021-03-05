CREATE TABLE MaleCountStateWise(
    State_name VARCHAR(50),
    Male_Population int,
  
)
CREATE TABLE FemaleCountStateWise(
    State_name VARCHAR(50),
    Female_Population int,
  
)

Create table SexRatioTable(
State_name varchar(50),
sexRatio float
)

Create table combinedGenderCount(
State_name VARCHAR(50),
    Male_Population int,
	 Female_Population int,
	Sex_Ratio float
)
--updating male table
Insert into MaleCountStateWise(State_name,Male_Population)
EXEC StateWisePop @columnName = Male
--updating female table
Insert into FemaleCountStateWise(State_name,Female_Population)
EXEC StateWisePop @columnName = Female
--updating sex ratio table
insert into SexRatioTable(State_name,sexRatio)
SELECT State_name,CAST(Male_Population as float)/CAST(Female_Population as float) from combinedGenderCount

--joining male,female and sex ratio tables
Insert into combinedGenderCount(State_name,Male_Population,Female_Population,Sex_Ratio)
SELECT MaleCountStateWise.State_name,MaleCountStateWise.Male_Population,FemaleCountStateWise.Female_Population,SexRatioTable.sexRatio
FROM ((MaleCountStateWise
LEFT JOIN FemaleCountStateWise ON MaleCountStateWise.State_name = FemaleCountStateWise.State_name)
LEFT JOIN SexRatioTable ON MaleCountStateWise.State_name = SexRatioTable.State_name)
ORDER BY MaleCountStateWise.State_name


SELECT Sex_Ratio, 
Case
	WHEN Sex_Ratio>1 THEN 'Male Higher'
	WHEN SEX_Ratio<1 THEN 'Female Higher'
	ELSE 'Equal'
END AS Comparison
FROM combinedGenderCount



