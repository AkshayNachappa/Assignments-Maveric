CREATE TABLE MaleCountStateWise(
    State_name VARCHAR(50),
    Male_Population int,
  
)
CREATE TABLE FemaleCountStateWise(
    State_name VARCHAR(50),
    Female_Population int,
  
)
Create table combinedGenderCount(
State_name VARCHAR(50),
    Male_Population int,
	 Female_Population int,
	Sex_Ratio float
)

Insert into MaleCountStateWise(State_name,Male_Population)
EXEC StateWisePop @columnName = Male
Insert into FemaleCountStateWise(State_name,Female_Population)
EXEC StateWisePop @columnName = Female


Insert into combinedGenderCount(State_name,Male_Population,Female_Population)
SELECT MaleCountStateWise.State_name,MaleCountStateWise.Male_Population,FemaleCountStateWise.Female_Population
FROM MaleCountStateWise
INNER JOIN FemaleCountStateWise ON MaleCountStateWise.State_name = FemaleCountStateWise.State_name
ORDER BY MaleCountStateWise.State_name

Create table SexRatioTable(
sexRatio float
)

insert into SexRatioTable(sexRatio)
SELECT CAST(Male_Population as float)/CAST(Female_Population as float) from combinedGenderCount

Insert Into combinedGenderCount(Sex_Ratio)
SELECT sexRatio FROM SexRatioTable

SELECT * from combinedGenderCount