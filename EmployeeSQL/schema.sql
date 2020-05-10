CREATE TABLE departments(dept_no char(30), dept_name varchar(30),
foreign key (dept_no) references dept_emp(dept_no),
primary key (dept_no,dept_name));



CREATE TABLE dept_emp(dept_no char(30),emp_no integer,
primary key (emp_no, dept_no));



CREATE Table employees(emp_no integer, emp_title_id char(30), birth_date date,
first_name varchar(30),last_name varchar(30),sex varchar(1),
hire_date date, 
foreign key (emp_no) references dept_emp(emp_no),
primary key(emp_no,emp_title_id,birth_date,first_name,last_name,
sex,hire_date));


CREATE Table salaries(emp_no integer, salary integer,
foreign key (emp_no) references employees(emp_no),
primary key(emp_no, salary));


CREATE Table dept_manager(dept_no char(30), emp_no integer,
foreign key (emp_no) references employees(emp_no),
primary key(dept_no,emp_no));


CREATE Table titles(title_id char(30), title varchar(30),
 foreign key (title_id) references employees(emp_title_id),
primary key (title_id,title));
				  

								
