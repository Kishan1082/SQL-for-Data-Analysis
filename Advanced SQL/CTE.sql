-- CTE

select * from Employees

select * into #temp1 from Employees
select * from #temp1

-- Example 1: CTE
with CTE as (
select * from #temp1
)
select * from cte

--Example 2:
with Test_CTE as (
select employeeid, firstname from #temp1 where employeeID in (2,4)
)
select * from test_cte

--Example 3:
with [Common_Table_Expression] as (
select * from #temp1 where EmployeeID in (1,2,3)
)
select * into #temp2 from [Common_Table_Expression]
select * from #temp2

--Example 4:
with CTE_1 as (
select * from #temp1 where EmployeeID in (2,4,6)
)
update #temp1 set employeeid = 101 where employeeid in (select distinct employeeid from cte_1)

select * from #temp1