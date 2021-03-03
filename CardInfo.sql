CREATE TABLE CardsInfo2(
    SlNum int ,
    CardType varchar(255),
    ExpMont int,
	ExpYear int

)
insert into CardsInfo2(SlNum,CardType,ExpMont,ExpYear)
Select TOP(50)[CreditCardID]
      ,[CardType]
      ,[ExpMonth]
      ,[ExpYear] from Sales.CreditCard
WHERE ExpYear>2007

insert into CardsInfo2(SlNum,CardType,ExpMont,ExpYear)
Select TOP(50)[CreditCardID]
      ,[CardType]
      ,[ExpMonth]
      ,[ExpYear] from Sales.CreditCard
WHERE ExpMonth>3 AND ExpYear>2007


insert into CardsInfo2(SlNum,CardType,ExpMont,ExpYear)
Select TOP(50)[CreditCardID]
      ,[CardType]
      ,[ExpMonth]
      ,[ExpYear] from Sales.CreditCard
WHERE CardType = 'Distinguish' OR CardType ='Vista'
