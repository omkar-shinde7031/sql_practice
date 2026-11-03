create database xyz;
use xyz;

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student(rollno,name,marks,grade,city) values
(101,"omkar",78,"c","pune"),
(102,"rahul",85,"b","mumbai"),
(103,"sneha",92,"a","nashik"),
(104,"priya",67,"d","nagpur"),
(105,"amit",74,"c","pune"),
(106,"neha",88,"b","satara");

select * from student; -- show all column from table
select name,marks from student; -- show specific column from table 
select distinct city from student; -- show only unique value from column
select * from student where marks > 90; -- show the only row only the marks grater than 90
select * from student where city = "mumbai"; -- show the only row whare city is mumbai
select * from student where marks > 80 and city = "mumbai"; -- show only row whare marks is grater than 80 and city is mumbai
SELECT * FROM student WHERE marks + 10 > 100; -- show the marks that (marks = marks + 10) would be grater than 100
select * from student where marks  = 92; -- show row only marks is 90
select * from student where marks > 90 or city = "mumbai"; -- only one condition should be true / in and both condition should be true 
select * from student where marks between 80 and 90; -- shoe only row that marks are between 80 and 90
select * from student where city in ("pune","mumbai"); -- show the row whare city is pune or mumbai
select * from student limit 3; -- show only the limited row of data 
select name,rollno from student limit 4; -- show limited column and rows 
select * from student where marks > 70 limit 3; -- show the only 3 row of whare marks are highter than 70
select * from  student order by city asc; -- arrenge the col by ascending order by first latter 
select * from student order by city desc; -- arrenge the col by descending order  
select * from student order by marks desc limit 3; -- gives the highest 3 marks of student row 
select max(marks) from student; -- max is function that gives maximum marks from marks column 
select min(marks) from student; -- min is function that gives most less marks form marks column
select avg(marks) from student; -- avg is  function that gives avrage marks from marks column
select count(marks) from student; -- count is function that gives total count of row of table 
select city,count(rollno) from student group by city; -- goup by show that in witch city how many students are thare 
select city,name,(rollno) from student group by city,name; -- also show name
select city,avg(marks) from student group by city; 
select city,avg (marks)  from student group by city order by avg(marks) asc; 
select grade, count(name) from student group by grade order by grade;
select city,count(rollno) from student group by city having max(marks) > 90; -- having is the condition we can applay on group by clouse
update student set grade = "o"where grade = "A"; -- using update we can change property inside table 
update student set marks = 95 where rollno = 101; -- we can change the marks of student by thir roolno 
update student set grade = "b" where marks between 80 and 90 ; -- if your marks are between 80 and 90 then grade will be b 
update student set grade = "A" where marks between 90 and 100 ; 
update student set marks = marks + 1; -- this will update all student marks by +1 mark 
delete from student where rollno =106 ; -- delete the row 
alter table student add column age int not null default 19; -- to add column in schema we use alter 
alter table student drop column age; -- to delete the column from table
alter table student modify column age varchar(2); -- modify can change column altributes 
alter table student change age stu_age int; -- change used for change the name of column and datatype 
alter table student rename to stu; -- to change the table name
truncate table student; -- used for deleting all the table rows from table
 -- JOINT -- 
create table studentt (
  id int primary key,
  name varchar(50)
);
insert into studentt (id, name)
values (101, 'adam'), (102, 'bob'), (103, 'casey');

create table course(
id int primary key ,
course varchar(50)
);
insert into course(id,course) values
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");
select * from studentt;
select * from course;

select * from studentt inner join course on studentt.id = course.id; -- comman id from studentt table and course table will be shown
select * from studentt as s inner join course  as c on s.id = c.id; -- shortcut for table name s,cache index
select * from studentt as a left join course as b on a.id = b.id; -- all the element from left table ex:- a will be shown and only maching element from table b will be display
select * from studentt as a right join course as b on a.id = b.id; -- all the elemient from right joint will  be diaplay and maching element from right join will be display
select * from studentt as a left join course as b on a.id = b.id union select * from studentt as a right join course as b on a.id = b.id; -- full join 










 







