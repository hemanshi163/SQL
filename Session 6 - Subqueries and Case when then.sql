
create schema Session6;
use Session6;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employees VALUES
(1, 'CEO', NULL),
(2, 'Manager', 1),
(3, 'Developer', 2),
(4, 'Intern', 3);

select * from employees;

-- SELF JOIN --
select m.emp_name as emp, e.emp_name as mgr
from employees e
join employees m
on e.emp_id=m.manager_id;

CREATE TABLE sizes (
    size VARCHAR(10)
);
create table colors (
color varchar(10));
INSERT INTO colors VALUES
('Red'),
('Blue');
INSERT INTO sizes VALUES
('S'),
('M'),
('L');

select * from colors;
select * from sizes;

-- CROSS JOIN --
select c.color, s.size
from colors c
cross join sizes s;

CREATE TABLE students (
    roll_no INT,
    name VARCHAR(50),
    marks INT
);
INSERT INTO students VALUES
(1, 'Rahul', 80),
(2, 'Anita', 90),
(3, 'Amit', 70),
(4, 'Meena', 85);

select * from students;

-- SUBQUERIES --
-- Show students who scored more than class average
select * from students where marks > (select avg(marks) from students);

-- Show the students who scored the highest marks
select * from students where marks = (select max(marks) from students);

-- Show students who scored below average
select * from students where marks < (select avg(marks) from students);

-- Show the students who scored exactly the average
select * from students where marks = (select avg(marks) from students);

-- Show the students who scored more than rahul
select * from students where marks > (select marks from students where name='Rahul');

-- Find the second highest marks
select max(marks) from students where marks < (select max(marks) from students);

-- CASE WHEN THEN --
create view student_result as
select name,marks,
CASE
when marks>=80 then 'Distinction'
when marks>=60 then 'Pass'
when marks>=40 then 'Average'
else 'Fail'
end as Result
from students;

create view student_endgame as
select name, marks,
CASE
when marks>=80 then "Pass"
else "Fail"
end as Result
from students;

select * from student_result;

select * from student_endgame;

create schema subquery;
use subquery;
CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    class VARCHAR(20)
);
INSERT INTO students VALUES
(1, 'Rahul', '10A'),
(2, 'Anita', '10A'),
(3, 'Amit', '10B'),
(4, 'Meena', '10B');
CREATE TABLE marks (
    student_id INT,
    subject VARCHAR(20),
    marks INT
);
INSERT INTO marks VALUES
(1, 'Math', 80),
(1, 'Science', 70),
(2, 'Math', 90),
(2, 'Science', 85),
(3, 'Math', 60),
(3, 'Science', 65),
(4, 'Math', 95),
(4, 'Science', 90);

select * from students;
select * from marks;

create view student_marks as
select s.name, m.subject, m.marks
from students s
right join marks m
on s.student_id = m.student_id;

select * from student_marks;

create table measurement(
height decimal,
weight decimal);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/height-weight.csv'
INTO TABLE measurement
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from measurement;
