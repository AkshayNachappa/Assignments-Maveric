CREATE TABLE FinalDerivedTable(
State_name varchar(50),
Male_population int,
Female_population int,
Total_Population int,
No_Districts int,
Avg_Population int,
Sex_Ratio float,
Sex_Ratio_Remark varchar(20)
)

INSERT INTO FinalDerivedTable(State_name,Male_population,Female_population,Total_Population,No_Districts,Avg_Population,Sex_Ratio,Sex_Ratio_Remark)
SELECT StateTable.State_name,GenderList.Male_Population,GenderList.Female_Population,StateTable.Tot_Population,StateTable.District_Count,
StateTable.Avg_pop,GenderList.Sex_Ratio,GenderList.Remark
FROM StateTable
INNER JOIN GenderList ON StateTable.State_name = GenderList.State_name
ORDER BY StateTable.State_name