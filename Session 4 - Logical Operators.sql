CREATE TABLE employee_sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    product VARCHAR(50),
    region VARCHAR(30),
    sale_amount INT,
    sale_date DATE
);

insert into employee_sales (employee_name, department, product, region, sale_amount, sale_date) values
('Anjali', 'Furniture', 'Chair', 'Pune', 12000, '2025-01-02'),
('Karan', 'Electronics', 'Mobile', 'Delhi', 25000, '25-01-02'),
('Neha', 'Stationery', 'Notebook', 'Mumbai', 3000, '2025-01-03');

insert into employee_sales (employee_name, department, product, region, sale_amount, sale_date) values 
('Rohan', 'Electronics', 'Laptop', 'Mumbai', 55000, '2025-01-01');

select * from employee_sales;

-- Find all employees whose name starts with ‘A’.
select * from employee_sales where employee_name like 'A%';

-- Find all employees whose name ends with ‘n’.
select * from employee_sales where employee_name like '%n';

-- Find all products that contain the word ‘top’.
select * from employee_sales where product like '%top%';

-- Find all employee names with exactly 5 characters.
select * from employee_sales where employee_name like '_____';

-- Find all products whose name starts with ‘Lap’.
select * from employee_sales where product like 'lap%';

select * from employee_sales;

-- Display all unique departments.
select distinct department from employee_sales;

-- Display all unique regions.
select distinct region from employee_sales;

-- Display all unique department–region combinations.
select distinct department, region from employee_sales;

-- Display all unique products sold.
select distinct product from employee_sales;

-- Display all records sorted by sale_amount (lowest to highest).
select * from employee_sales order by sale_amount asc;

-- Display all records sorted by sale_amount (highest to lowest).
select * from employee_sales order by sale_amount desc;

-- Display all records sorted by sale_date (latest first).
select * from employee_sales order by sale_date desc;

-- Display all records sorted by department alphabetically.
select * from employee_sales order by department;

-- Display all records sorted by department, and within each department by highest sale amount.
select * from employee_sales order by department asc, sale_amount desc;

-- Display only the first 3 records.
select * from employee_sales limit 3;

-- Display the top 2  highest sales.
select * from employee_sales order by sale_amount desc limit 2;

-- Display the latest 3 sales records.
select * from employee_sales order by sale_date desc limit 3;

-- Display records 2 to 4 from the table.
select * from employee_sales limit 1,4;

-- display records from 3 to 5

insert into employee_sales (employee_name, department, product, region, sale_amount, sale_date) values
('Anjali', 'Furniture', 'Chair', 'Pune', 12000, '2025-01-02'),
('Karan', 'Electronics', 'Mobile', 'Delhi', 25000, '25-01-02'),
('Neha', 'Stationery', 'Notebook', 'Mumbai', 3000, '2025-01-03'),
('Anjali', 'Furniture', 'Chair', 'Pune', 12000, '2025-01-02'),
('Karan', 'Electronics', 'Mobile', 'Delhi', 25000, '25-01-02'),
('Neha', 'Stationery', 'Notebook', 'Mumbai', 3000, '2025-01-03');

select * from employee_sales;

-- Add column - payment mode to the existing table with constraint not null
alter table employee_sales add column payment_mode varchar(30) not null;

-- Add multiple columns - discount, remarks
alter table employee_sales add discount int, add remarks varchar(50);

-- Add column at a specific position - email after employee_name

alter table employee_sales add column email varchar(30) after employee_name;

describe employee_sales;

-- change datatype of sale_amount to decimal
-- when you want to change the name as well as data type use change keyword
alter table employee_sales modify sale_amount decimal;

-- change
alter table employee_sales change sale_amount sale_amount int;

-- increase column employee_name length to 100 size
alter table employee_sales modify employee_name varchar(100);

-- add not null constraint in department
alter table employee_sales modify department varchar(30) not null;

-- Update the total sales to 45,000 for the record with sale_id = 3

update employee_sales
set sale_amount=45000
where sale_id=3;

-- Update the region to Bangalore for ename Rohan.

update employee_sales set region="Bangalore" where employee_name="Rohan";

-- Update both sale_amount and region for the record with sale_id = 5
update employee_sales set sale_amount=15000, region='Jaipur' where sale_id=5;

-- Increase the sale amount by 2,000 for all Electronics sales in Delhi.
update employee_sales set sale_amount=sale_amount+2000 where department='Electronics' and region='Delhi';

-- Update the region to Kolkata for all employees whose name starts with ‘A’.
update employee_sales set region='Kolkata' where employee_name like 'A%';

select * from employee_sales;















select * from employee_sales;

select * from employee_sales;






