--State wise male population table
CREATE TABLE #MaleCountStateWise(
    State_name VARCHAR(50),
    Male_Population int,
  
)
--State wise female population table
CREATE TABLE #FemaleCountStateWise(
    State_name VARCHAR(50),
    Female_Population int,
  
)
--State wise sex ratio table
Create table #SexRatioTable1(
State_name varchar(50),
sexRatio float
)
--State wise temporary gender count
Create table #combinedGenderCount1(
State_name VARCHAR(50),
    Male_Population int,
	 Female_Population int,
	Sex_Ratio float
)
--State wise sex ratio remarks
Create table #stateRemarks1(
State_name varchar(50),
SexRatio float,
Remark varchar(20)
)
-->>>FINAL COMBINED TABLE<<<
Create table GenderList(
State_name VARCHAR(50),
    Male_Population int,
	 Female_Population int,
	Sex_Ratio float,
	Remark varchar(20)
)

--updating male table
Insert into #MaleCountStateWise(State_name,Male_Population)
EXEC StateWisePop @columnName = Male

--updating female table
Insert into #FemaleCountStateWise(State_name,Female_Population)
EXEC StateWisePop @columnName = Female
-- Creating table to join male and female population records
CREATE TABLE #JoiningMF(
State_name varchar(50),
malepop int,
femalepop int
)
--Combining male and female count values into JoinMF
INSERT INTO #JoiningMF(State_name,malepop,femalepop)
SELECT #MaleCountStateWise.State_name,#MaleCountStateWise.Male_Population,#FemaleCountStateWise.Female_Population
FROM #MaleCountStateWise
INNER JOIN #FemaleCountStateWise ON #MaleCountStateWise.State_name = #FemaleCountStateWise.State_name
ORDER BY #MaleCountStateWise.State_name

--updating sex ratio table
insert into #SexRatioTable1(State_name,sexRatio)
SELECT State_name,CAST(malepop as float)/CAST(femalepop as float) from #JoiningMF

--joining male,female and sex ratio tables
Insert into #combinedGenderCount1(State_name,Male_Population,Female_Population,Sex_Ratio)
SELECT #MaleCountStateWise.State_name,#MaleCountStateWise.Male_Population,#FemaleCountStateWise.Female_Population,#SexRatioTable1.sexRatio
FROM ((#MaleCountStateWise
LEFT JOIN #FemaleCountStateWise ON #MaleCountStateWise.State_name = #FemaleCountStateWise.State_name)
LEFT JOIN #SexRatioTable1 ON #MaleCountStateWise.State_name = #SexRatioTable1.State_name)
ORDER BY #MaleCountStateWise.State_name

--Inserting remarks in remarks table
INSERT INTO #stateRemarks1
SELECT State_name,SexRatio,
CASE
WHEN SexRatio>1 THEN 'Male Higher'
	WHEN SEXRatio<1 THEN 'Female Higher'
	ELSE 'Equal'
END 
FROM #SexRatioTable1

SELECT * FROM #combinedGenderCount1 --For debugging

--Combining the records into final table
INSERT INTO GenderList(State_name,Male_Population,Female_Population,Sex_Ratio,Remark)
SELECT #combinedGenderCount1.State_name,#combinedGenderCount1.Male_Population,#combinedGenderCount1.Female_Population,#stateRemarks1.SexRatio,#stateRemarks1.Remark
FROM #combinedGenderCount1
INNER JOIN #stateRemarks1 ON #combinedGenderCount1.State_name = #stateRemarks1.State_name
ORDER BY #combinedGenderCount1.State_name

SELECT * from GenderList --for debugging



