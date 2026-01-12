-- Copying data from existing table to new table

-- CASE 1: The new table simply doesnt exist
select * from dbo.Sales\

select * into NEW_Table_1 from dbo.Sales
select * from NEW_Table_1
drop table NEW_Table_1

-- copy certain columns
select productid, quantity into new_table_1 from dbo.Sales

--CASE 2: The new table structure/New table exists

select top 0 * into new_table_2 from dbo.Sales
select * from new_table_2

insert into new_table_2 select * from dbo.Sales

-- copying certain columns
select * into new_table3 from dbo.Sales where 1=0
select * from new_table3

insert into new_table3(ProductID, SaleDate) select productid, saledate from dbo.Sales