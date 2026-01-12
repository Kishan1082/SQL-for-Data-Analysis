use Sales_Database

select * from dbo.table1
select * from dbo.table2

-- left join

select * from table1 left join table2
on table1.c1 = table2.c1

--right join
select * from table1 a right join table2 b
on a.c1 = b.c1

-- left anti join

select * from table1 a left join table2 b
on a.c1 = b.c1
where b.c1 is null

--right anti join
select * from table1 a right join table2 b
on a.c1 = b.c1
where a.c2 is null

--full outer join
select a.c1, a.c2, b.c3 from table1 a full outer join table2 b
on a.c1 = b.c1

-- self join
SELECT *
FROM table1 AS A
INNER JOIN table1 AS B
  ON A.c1 = B.c1