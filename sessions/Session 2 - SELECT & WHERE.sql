create schema employee;
use employee;
create table employee_sales(
sale_id int auto_increment primary key,
employee_name varchar(50),
department varchar(50),
product varchar(50),
region varchar(50),
sale_amount int,
sale_date date
);

describe employee_sales;
insert into employee_sales (employee_name, department, product, region, sale_amount, sale_date)
values ('Rohan','Electronics', 'Laptop', 'Mumbai', 55000, '2025-01-01');

insert into employee_sales (employee_name, department, product, region, sale_amount, sale_date)
values('Anjali', 'Furninture','Chair','Pune',12000,'2025-03-01'),
('Karan','Electronics','Mobile','Delhi',25000,'2025-01-02'),
('Neha','Stationery','Notebook','Mumbai',3000,'2025-03-01');
-- SELECT --
#1 Display all records from the employee_sales table.
select * from employee_sales;

select employee_name, department from employee_sales;

select employee_name, department as dept from employee_sales;

#2 Display only employee_name, product, and sale_amount.
select employee_name, product , sale_amount from employee_sales;

#3 Display employee_name and region for all sales.
select employee_name, region from employee_sales;

#4 Display all records but rename sale_amount as Amount.
select sale_id, employee_name, department, product, region, sale_amount as Amount, sale_date from employee_sales;

#5 Display all sales where only product and sale date are shown.
select product, sale_date from employee_sales;

-- WHERE --
#Show all sales from the Mumbai region.
select * from employee_sales where region='Mumbai';

#Show all sales with sale_amount greater than 20,000
select * from employee_sales where sale_amount>20000;

#Show all sales that happened on 2025-01-02.
select * from employee_sales where sale_date='2025-01-02';

#Show all sales with sale_amount between 10,000 and 30,000.
select * from employee_sales where sale_amount>=10000 and sale_amount<=30000;

#Show all sales that are not from the Stationery department.
select * from employee_sales where department!='Stationery';

#Show all Electronics sales with amount greater than 30,000.
select * from employee_sales where department='Electronics' and sale_amount>30000;

#Show all sales from Mumbai OR Delhi.
select * from employee_sales where region='Mumbai' or region='Delhi';

#Show all Electronics sales from Mumbai OR Delhi.
select * from employee_sales where department='Electronics' and (region='Delhi' or region='Mumbai');

#Show all sales from furniture dept in Pune
select * from employee_sales where department='Furniture' and region='Pune';

#Show all sales not happening in Pune
select * from employee_sales where region!='Pune';

select * from employee_sales;


