 -- create table
 create database Student_register

 create table student_details (
 Student_Name nvarchar(256),
 Gender char(1),
 Age tinyint,
 event_date date,
 distance decimal(5,2))

 select * from student_details

 -- insert record into the table

 insert into student_details (Student_Name, Gender,Age, event_date, distance)
 values ('Raj Mehra', 'M', 25, '2024-08-03', 123.11)

 insert into student_details
 values ('Neha Singh', 'F', 21, '2024-08-03', 101.81)

 -- insert multiple records into the table
 insert into student_details
 values ('Mayank Gupta', 'M', 28, '2024-08-03', 145.00),
 ('Priya Madhav', 'F', 18, '2024-08-03', 150.99)

 insert into student_details(Student_Name, Gender)
 values ('Ruhi Sharma', 'F')

 insert into student_details(age, event_date)
 values (34,'2024-08-03'),(31, '2024-08-03')

 --Datatype of column age is tinyint
 select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'