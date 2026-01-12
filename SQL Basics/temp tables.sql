-- Temporary tables
SELECT * INTO #temp1 FROM dbo.employees
SELECT * FROM #temp1

SELECT * FROM #temp1
SELECT * FROM dbo.employees

SELECT * INTO ##temp2 FROM dbo.employeerecords
SELECT * FROM ##temp2

-- Where clause
select * from dbo.EmployeeRecords
where EmployeeID = 2

select * from dbo.EmployeeRecords
where Salary > 75000
select * from dbo.EmployeeRecords
where Salary < 75000

-- OrderBy clause
select * from [dbo].[Employees]
order by Salary 

select * from [dbo].[Employees]
order by Salary desc

select * from [dbo].[Employees]
order by FirstName asc, Salary desc

select * from [dbo].[Employees]
order by Department asc, Salary desc

-- AND & OR operator
select * from [dbo].[EmployeeRecords]
where LastName = 'Miller' and EmployeeID = 3

select * from [dbo].[EmployeeRecords]
where Department = 'HR' or Department = 'Finance'

select * from [dbo].[EmployeeRecords]
where (Department = 'HR' or Department = 'Finance') and Salary = 60000