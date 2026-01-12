-- Constraints

create database constraints

-- NOT NULL constraint
-- case 1 : we will have to create a new table
create table test_not_null (
EID int not null,
age tinyint,
firstname varchar(256)
)

select * from test_not_null

-- case 2 : the table already exists
-- we want to make firstname column nullable

alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values (21,34,null)


-- Unique constraint
-- Case 1: When the table already exists
alter table test_unique
add unique (lastname)

-- Case 2: We need to create a table
create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar (256)
)

select * from test_unique


-- Check constraint
-- Case 1: Table doesn't exist
create table test_check (
EID int,
firstname varchar (256),
age tinyint check (age >=10)
)

select * from test_check

insert into test_check values (1, 'Mayank', 20)
insert into test_check values (2, 'Raj', 9)

-- Case 2: Table exists
alter table test_check
add check (eid>5)

insert into test_check values (3, 'Nitin', 34)
insert into test_check values (45, 'Nathan', 24)
