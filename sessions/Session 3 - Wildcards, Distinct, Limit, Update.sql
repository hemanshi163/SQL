use employee;

-- WILDCARDS -- (LIKE)
-- Find all ees whose name starts with A.
select * from employee_sales where employee_name like 'A%';

-- Find all employees whose name ends with ‘n’.
select * from employee_sales where employee_name like '%n';

-- Find all products that contain the word ‘top’.
select * from employee_sales where product like '%top%';

-- Find all employee names with exactly 5 characters.
select * from employee_sales where employee_name like '_____';

-- Find all products whose name starts with ‘Lap’.
select * from employee_sales where product like 'lap%';

-- Find all products whose name has 'h' at the second position.
select * from employee_sales where product like '_h%';

-- DISTINCT --
#Display all unique departments.
select distinct department from employee_sales;

#Display all unique regions.
select distinct region from employee_sales;

#Display all unique department–region combinations.
select department, region from employee_sales;

#Display all unique products sold.
select distinct product from employee_sales;

-- SORTING --
#Display all records sorted by sale_amount (lowest to highest).
select * from employee_sales order by sale_amount;

#Display all records sorted by sale_amount (highest to lowest).
select * from employee_sales order by sale_amount desc;

#Display all records sorted by sale_date (latest first).
select * from employee_sales order by sale_date desc;

#Display all records sorted by department alphabetically.
select * from employee_sales order by department;

#Display all records sorted by department, and within each department by highest sale amount.
select * from employee_sales order by department asc, sale_amount desc;

-- LIMIT --
#Display only the first 3 records.
select * from employee_sales limit 3;

#Display the top 2 highest sales.
select * from employee_sales order by sale_amount desc limit 2;

#Display the latest 3 sales records.
select * from employee_sales order by sale_date desc limit 3;

#Display records 2 to 4 from the table.
select * from employee_sales limit 1,4;

#Display records from 3 to 5.
select * from employee_sales limit 3,5;

select * from employee_sales;

-- ADD COLUMNS --
-- Add column - payment mode to the existing table with constraint not null
alter table employee_sales add column paymnet_mode varchar(30) not null;
describe employee_sales;

-- Add multiple columns - discount, remarks
alter table employee_sales add discount int, add remarks varchar(50);
describe employee_sales;

-- Add column at a specific position - city after employee_name
alter table employee_sales add column city varchar(30) after employee_name;
describe employee_sales;

-- Change datatype of sale amount to decimal
#when you want to change the name as well as dtype use - change
#when you only want to change the dtype use - modify

-- change datatype of sale_amount to decimal
alter table employee_sales modify sale_amount decimal;
describe employee_sales;

-- increase column employee_name length to 100 size
alter table employee_sales modify employee_name varchar(100);
describe employee_sales;

-- add not null constraint in department
alter table employee_sales modify department varchar(30) not null;
describe employee_sales;

-- RENAME
#rename employee_name to ename

#rename sale_date to transaction_date



-- DROP
#drop column remarks


-- UPDATE --
#Update the total sales to 45,000 for the record with sale_id = 3
update employee_sales
set sale_amount = 45000
where sale_id =3;
select * from employee_sales;

#Update the region to Bangalore for ename Rohan.
update employee_sales set region = 'Bangalore' where employee_name='Rohan';
select * from employee_sales;

#Update both sale_amount and region for the record with sale_id = 5
update employee_sales set region = 'Bangalore', sale_amount=75000 where sale_id=5;
select * from employee_sales;

#Increase the sale amount by 2,000 for all Electronics sales in Delhi.
update employee_sales set sale_amount=sale_amount+2000 where department='Electronics' and region='Delhi';
select * from employee_sales;

#Update the region to Kolkata for all employees whose name starts with ‘A’.
update employee_sales set region='Kolkata' where employee_name like 'A%';
