-- SQL MIN function and GOUPBY

select * from dbo.Sales

select min(quantity)[Minimum quantity] from dbo.Sales
select min(SaleDate)[Minimum Sales Date] from dbo.Sales
select min(PaymentMethod)[Minimum pay method] from dbo.Sales

-- show minimum total ammount for each storeID
select storeid, min(TotalAmount)[Minimum Total Amount] from dbo.Sales
group by StoreID

-- SUM, AVG and COUNT functions

select sum(quantity) [Total Quantity] from dbo.Sales
select sum(quantity) [Total Quantity], sum(Totalamount) [Sum of Amount] from dbo.Sales

select avg(quantity) [Average Quantity] from dbo.Sales
select avg(quantity) [Average Quantity], avg(Totalamount) [Average of Amount] from dbo.Sales

-- combination of distinct product
select 
productID,
sum(quantity) [Total Quantity],
sum(Totalamount) [Sum of Amount],
avg(quantity) [Average Quantity],
avg(Totalamount) [Average of Amount]
from dbo.Sales
group by ProductID

-- combination of distinct prudct and store
select 
productID,
storeID,
sum(quantity) [Total Quantity],
sum(Totalamount) [Sum of Amount],
avg(quantity) [Average Quantity],
avg(Totalamount) [Average of Amount]
from dbo.Sales
group by ProductID, StoreID

select * from dbo.Sales
select count(*) [Number of rows] from dbo.Sales

select count(paymentmethod) [No of Records] from dbo.Sales
select count(distinct ProductID) [Distinct Products] from dbo.Sales
select PaymentMethod, count(paymentmethod) [Payment mode] from dbo.Sales
group by PaymentMethod