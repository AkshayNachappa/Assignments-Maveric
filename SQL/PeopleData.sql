-- Create a table to log basic information about people

CREATE TABLE PeopleDatas1(
    IDNum int ,
    FirstName varchar(255) not null,
    LastName varchar(255) not null,
    city VARCHAR(255),
    Country VARCHAR(255) 
)

select * from PeopleDatas1
insert into PeopleDatas1
VALUES('1','Ram','Kumar','Mysuru','India'),
('2','Francis','Roberto','Rome','Italy'),
('3','Kino','Shyam','Kathmandu','Nepal')

insert into PeopleDatas1(FirstName,LastName)
SELECT TOP (10) FirstName,LastName from Person.Person
