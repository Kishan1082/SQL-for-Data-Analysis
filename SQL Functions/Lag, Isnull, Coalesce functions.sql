--  Lag functions
select * from ProfitData

-- To add a new column that shows previous month's profit for each product
select *,
lag(profit) over (partition by product order by monthnumber) [Lag Function]
from ProfitData

-- We dont want product column in the output, but we want each month's total profit to be show by monthnumber & monthname. 
-- Also a new column should be added to show previous month's total profit

select MonthNumber, MonthName, sum(profit) [Total profit for month],
lag(sum(profit)) over(order by monthnumber) [Previous month's total profit]
from ProfitData
group by MonthNumber, MonthName
order by MonthNumber

-- isnull, coalesce funcitons
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);

select * from Customers

-- Isnull
select isnull(null, '1st value is null')

select isnull('abx', null)

--Coalesce
select coalesce ('a', 'b', 'c')

select coalesce (null, 'b', 'c')

select coalesce (null, null, 'c')

--
select CustomerID, email, phonenumber from customers

select CustomerID, isnull(email, 'Email N/A'), isnull(phonenumber, 'Ph no N/A') from customers

select CustomerID, coalesce(email, phonenumber, 'Contact N/A') [Coalesce function] from customers