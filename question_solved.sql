 -- question solving
 select * from student;
 select name,marks from student;
 select distinct city,name from student;
 select * from student where marks > 80;
 select * from student where city = "pune";
 select * from student where city = "pune" and marks > 70;
 select * from student where marks between 80 and 90;
 select * from student where city in ("pune","mumbai");
 select * from student where city = "mumbai" or marks > 90;
 select * from student order by marks desc limit 3;
 select * from student order by city desc;
 select rollno,name from student limit 4;
 select sum(marks) from student;
 select max(marks) from student;
 select min(marks) from student;
 select avg(marks) from student; -- 13
 select city,count(name) from student group by city; -- 14
 select city,avg(marks) from student group by city order by avg(marks) asc; -- 15
 select city,marks,count(marks) from student group by city,marks having marks > 85; -- 16
select grade,count(marks) from student group by grade order by grade;
update student set marks = marks + 5 where rollno = 104;
update student set marks = marks + 1;
update student set grade = "A" where marks between 80 and 90;
delete from student where rollno = 104;
select * from student;
insert into student values
(106,"ram",90,"A","mumbai"),
(107,"madhav",78,"B","nashik");

alter table student change name full_name varchar(20);
delete from student where marks > 80;
alter table student drop column grades;