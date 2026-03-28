create schema customer_info;
use customer_info;
create table student(
roll_no int,
name varchar(30),
place varchar(30)
);
use customer_info;
create table teacher(
id int,
name varchar(30),
place varchar(30)
);

drop schema customer_info

create schema humans;
use humans;
create table student(
student_id int primary key,
name varchar(30) not null,
email varchar(30) unique,
age int check(age>=18),
city varchar(30) default 'Mumbai'
);
describe student;
alter table student change student_id s_id int;

alter table student modify s_id float;

alter table student add column experience int;

alter table student add column phone int after email;

alter table student drop column phone;    #To delete a column

rename table student to student_info;    #To change the table name

truncate table student_info 