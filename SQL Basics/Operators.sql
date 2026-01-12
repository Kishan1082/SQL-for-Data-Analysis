-- NOT, BETWEEN, In operators
select * from [dbo].[EmployeeRecords]

select * from [dbo].[EmployeeRecords]
where not FirstName = 'John' and not salary = 60000

select * from [dbo].[EmployeeRecords]
where not LastName = 'Miller' or not department = 'HR'

select * from dbo.employeerecords
where salary between 75000 and 85000

-- insert into
select * from [dbo].[Employees]

insert into dbo.employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
values (6, 'Raj', 'Ambani', 'IT', 67000, '2023-04-20')

insert into dbo.employees (EmployeeID, FirstName, LastName)
values (7, 'Rohit', 'Mishra')

insert into [dbo].[Employees]
values(8, 'Mahesh', 'Nair', 'HR', 73000, '2024-01-21')

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Employees'

-- Null operator
insert into dbo.employees
values (9, 'Jay','', 'IT', 73000, '2022-04-04')
insert into dbo.employees
values (10, 'Nitin','Sharma', '0', 63000, '2021-02-14')

select * from [dbo].[Employees]
where Department = Null

select * from [dbo].[Employees]
where Department is not Null

-- update statement
select * into #1 from [dbo].[Employees]
select * from #1

update #1
set Department ='HR'
where Department is null

update #1
set Salary = 90000, HireDate = '2020-10-15'
where EmployeeID = 7
