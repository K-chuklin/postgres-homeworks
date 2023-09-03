-- SQL-команды для создания таблиц
CREATE TABLE employees
(
	employee_id int PRIMARY KEY,
	first_name varchar(30),
	last_name varchar(30),
	title varchar(100),
	birth_date date,
	notes text
)

CREATE TABLE customers
(
	customer_id varchar,
	company_name varchar,
	contact_name varchar
)

CREATE TABLE orders
(
	order_id serial,
	customer_id varchar REFERENCES customers(customer_id),
	employee_id int	REFERENCES employees(employee_id),
	order_date date,
	ship_city varchar
)
