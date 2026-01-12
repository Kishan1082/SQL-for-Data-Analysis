-- Default constraint
-- Case 1: The table doesnt exist

create table test_default(
EID int default 5,
firstname varchar(256) default 'Rohit',
lastname varchar(256),
age tinyint
)
select * from test_default

insert into test_default (lastname) values ('Markus')

-- case 2: The table already exists 
alter table test_default
add default 25 for age

insert into test_default (lastname) values('Jain')


-- Primary key constraint
--Case 1: When new table is to be created
create table test_pk_1(
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)
select * from test_pk_1
insert into test_pk_1 values(1,'M', 24, 'Mark')
truncate table test_pk_1

--Case 2: Table already exists
alter table test_pk_1
add primary key (age)

create table test_pk_2 (
sid int not null unique,
firstname nvarchar(256),
age tinyint not null
)

alter table test_pk_2
add primary key(sid,age)


-- Foreign key constraint
--Case 1: When the new table has to be created
create table test_primary_key(
ID int primary key,
name varchar(256)
)

insert into test_primary_key values (1, 'Mark'), (2, 'Rio'), (3, 'Jess')
select * from test_primary_key

create table test_foreign_key (
ID int foreign key references test_primary_key(id),
course varchar(256)
)

insert into test_foreign_key values (1,'A')
select * from test_foreign_key

insert into test_foreign_key values (null, 'B')
insert into test_foreign_key values (5, 'A')

--Case 2: Table already exists
create table test_foreign_key_2 (ID int, course varchar(256))

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)