drop table deparments
drop table dept_managers
drop table dept_emp

create table departments(
	dept_no varchar(30),
	dept_name varchar(30),
	primary key(dept_no)
);

create table dept_emp(
	emp_no integer not null,
	dept_no varchar(30), 
	primary key(emp_no,dept_no)
);


create table dept_managers(
	dept_no varchar(30) not null,  
	emp_no integer not null,
	primary key(dept_no, emp_no)
);


create table employees(
	emp_no integer not null,
	emp_title_id varchar(30),
	birth_date varchar(30),
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(30),
	hire_date varchar(30),
	primary key(emp_no),
	foreign key (emp_title_id) references titles(title_id)
);

create table salaries(
	emp_no integer not null, 
	salary integer,
	primary key(emp_no)
);


create table titles(
	title_id varchar(30) not null, 
	title varchar(30),
	primary key(title_id)
);

select * from departments;
select * from dept_emp;
select * from dept_managers;
select * from employees;
select * from salaries;
select * from titles;
