-- Delete, Drop, Truncate
use employee_details
select * into #3 from [dbo].[Employees]

select * from #3

delete from #3
where LastName = '' or Department = '0'

truncate table #3

drop table #3

-- top N
select top 5 * from dbo.employees
