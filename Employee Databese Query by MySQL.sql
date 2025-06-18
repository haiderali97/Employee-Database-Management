create database project;

use project;

create table employee(employeeID int(10),employees varchar(20),department varchar(20),age int(3), location varchar(20));

insert into employee values(0001, 'Ayesha Khan','HR',28,'mumbai'),(0002, 'Raj Patel','finance',34,'Ahmedabad'),(0003,'Sneha Reddy','IT',26,'hydrabad'),(0004,'imran sheikh','marketing',30,'dehli'),(0005,'pooja verma','sales',29, 'jaipur'),(0006,'arjun mehra','IT',32,'bangalore'),(0007, 'fatima noor','HR',27,'lucknow'),(0008,'rohan gupta','finance',27,'pune');
select * from employee;

create table salary(employeeID int(10),salary int(10));
insert into salary values(0001, 90000),(0002,30000),(0003,70000),(0004,40000),(0005,30000),(0006,25000),(0007,45000),(0008,67000),(0009,35000),(0010,40000);
select * from salary;

select department from employee;
select age from employee;
select location from employee;


select department,max(salary) from employee group by department having department='HR';



select * from employee inner join salary on salary.employeeID=employee.employeeID;

create view report as select employees from employee where department='IT';
select * from report;


