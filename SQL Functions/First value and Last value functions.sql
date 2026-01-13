create database [window fun]
use [window fun]

CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

select * from EmployeeSalaries

--First_value
select *,
FIRST_VALUE(Salary) over(order by salary asc) [Minimum salary]
from EmployeeSalaries

select *,
FIRST_VALUE(EmployeeName) over(order by salary asc) [Employee with Minimum salary],
FIRST_VALUE(Salary) over(order by salary asc) [Minimum salary]
from EmployeeSalaries

select *,
FIRST_VALUE(EmployeeID) over (partition by department order by salary) [First Value]
from EmployeeSalaries

select *,
FIRST_VALUE(EmployeeID) over (partition by department order by salary desc) [First Value],
FIRST_VALUE(EmployeeName) over (partition by department order by salary desc) [First Value EName]
from EmployeeSalaries

-- Last value

--Incorrect query
select * ,
LAST_VALUE(EmployeeName) over (order by salary desc) [EMP w/ lowest salary]
from EmployeeSalaries

-- Correct query
select * ,
LAST_VALUE(EmployeeName) over (order by salary desc rows between unbounded preceding and unbounded following) [EMP w/ lowest salary]
from EmployeeSalaries

select * ,
LAST_VALUE(EmployeeName) over (order by salary desc rows between unbounded preceding and unbounded following) [EMP w/ lowest salary],
LAST_VALUE(Salary) over (order by salary desc rows between unbounded preceding and unbounded following) [Lowest salary]
from EmployeeSalaries

select * ,
LAST_VALUE(EmployeeName) over (partition by department order by salary desc rows between unbounded preceding and unbounded following) [EMP w/ lowest salary],
LAST_VALUE(Salary) over (partition by department order by salary desc rows between unbounded preceding and unbounded following) [Lowest salary]
from EmployeeSalaries

select * ,
LAST_VALUE(EmployeeName) over (partition by department order by salary rows between unbounded preceding and unbounded following) [EMP w/ highest salary],
LAST_VALUE(Salary) over (partition by department order by salary rows between unbounded preceding and unbounded following) [Highest salary]
from EmployeeSalaries