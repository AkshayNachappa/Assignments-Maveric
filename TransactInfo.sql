CREATE TABLE TransactionInfo(
    TransactionID int ,
    ProductID int,
    ReferenceID int,
    Quantity int
)
insert into TransactionInfo(TransactionID,ProductID,ReferenceID,Quantity)
Select TransactionID,ProductID,ReferenceOrderID,Quantity from Production.TransactionHistory
WHERE Quantity>5