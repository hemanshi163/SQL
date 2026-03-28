create table students(
rno int primary key,
name varchar(30));

CREATE TABLE marks (
    name VARCHAR(50),
    marks INT
);
INSERT INTO students VALUES
(1, 'Rahul'),
(2, 'Anita'),
(3, 'Amit');
INSERT INTO marks VALUES
('Rahul', 85),
('Anita', 90);

select * from students;
select * from marks;

-- JOINS --
-- LEFT join

select s.rno, s.name, m.marks
from students s
left join marks m
on s.name=m.name;

-- RIGHT Join
select s.rno, s.name, m.marks
from students s
right join  marks m
on  s.name=m.name

-- INNER Join
select s.rno, s.name, m.marks
from students s
inner join marks m
on s.name=m.name;

-- FULL Join
select s.rno, s.name, m.marks
from students s
left join marks m
on s.name=m.name

union

select s.rno, s.name, m.marks
from students s
right join  marks m
on  s.name=m.name;
