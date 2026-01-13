-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry

select * from EmployeeRecords
order by EmployeeID,EmployeeName,ManagerID

With CTE as (
select *, row_number() over(partition by employeeid,employeename,managerid order by employeeid) [Row Number] from EmployeeRecords
)
--select * from CTE
delete from cte where [Row Number] = 2

-----------------------
select * into emprecords_bkp from EmployeeRecords

select * from emprecords_bkp

select distinct * into #1 from emprecords_bkp

truncate table emprecords_bkp

insert into emprecords_bkp select * from #1

select * from #1

