--Views 
select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp

create view View_1 as (
select * from emp_bkp
)

select * from View_1

---
create view View_2 as (
select EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate from emp_bkp
)

select * from View_2

-- updating the view

update View_1
set EmployeeID = 100

-- drop the view
drop view View_2