
-------UC1------------------
create database payroll_service;

Show Database payroll_service;

use payroll_service;

------------UC2-----------------
create table Employee_payroll(id int  NOT NULL IDENTITY(1,1),
name varchar(200)NOT NULL,
salary float NOT NULL,
startDate date NOT NULL,
PRIMARY KEY(id)
);

------------UC3-----------------
insert into Employee_payroll(name,salary,startDate) values
('Upendra',16000,'2020-02-12'),
('Veervant',17000,'2021-03-11'),
('Rahul',19000,'2018-06-13'),
('Priya',18000,'2019-04-16');

------------UC4-----------------
select * from Employee_payroll;

------------UC5-----------------
SELECT salary FROM  Employee_payroll WHERE NAME='MANSI';
SELECT salary FROM Employee_payroll WHERE startDate BETWEEN Cast('2020-12-20' as Date) and GetDate();
SELECT * FROM Employee_payroll WHERE startDate BETWEEN CAST('2021-02-01' AS DATE) AND CAST('2022-03-01' AS DATE);

------------UC6-----------------
ALTER TABLE Employee_payroll ADD gender varchar(30);
UPDATE Employee_payroll set gender = 'F' WHERE id=4;
UPDATE Employee_payroll set gender = 'M' WHERE id>=9 and id<=11;
UPDATE Employee_payroll set gender = 'F' WHERE name='Priya';

------------UC7-----------------
SELECT SUM(salary) FROM Employee_payroll;
SELECT SUM(salary) FROM Employee_payroll where gender = 'F';
SELECT SUM(salary) FROM Employee_payroll where gender = 'M';

SELECT AVG(salary) FROM Employee_payroll;
SELECT AVG(salary) FROM Employee_payroll where gender = 'M';
SELECT AVG(salary) FROM Employee_payroll where gender = 'F';

SELECT MIN(salary) FROM Employee_payroll;
SELECT MIN(salary) FROM Employee_payroll where gender = 'M';
SELECT MIN(salary) FROM Employee_payroll where gender = 'F';

SELECT MAX(salary) FROM Employee_payroll;
SELECT MAX(salary) FROM Employee_payroll where gender = 'M';
SELECT MAX(salary) FROM Employee_payroll where gender = 'F';

SELECT COUNT(*) FROM Employee_payroll;
SELECT COUNT(salary) FROM Employee_payroll;
SELECT COUNT(salary) FROM Employee_payroll where gender = 'M' GROUP BY GENDER;
SELECT COUNT(salary) FROM Employee_payroll where gender = 'F' GROUP BY GENDER;

------------UC8-----------------
ALTER TABLE Employee_payroll add phone varchar(50), address varchar(200), department varchar(30);
UPDATE Employee_payroll set phone = '9912456789', address = 'Mumbai', department ='Administration' where id =7;
UPDATE Employee_payroll set phone = '7932145672', address = 'Nagpur', department ='HR' where id =8;
UPDATE Employee_payroll set phone = '8754122351', address = 'Lucknow', department ='Administration' where id =9;
UPDATE Employee_payroll set phone = '9847561214', address = 'Surat', department ='HR' where id =10;
UPDATE Employee_payroll set phone = '8947561225', address = 'Gurat', department ='Sales' where id =11;
UPDATE Employee_payroll set phone = '7847511226', address = 'Punjab', department ='Marketing' where id =12;

------------UC9-----------------
ALTER TABLE Employee_payroll add Basic_pay decimal, Deduction decimal, Taxable_pay decimal, Income_tax decimal, Net_pay decimal; 

------------UC10-----------------
insert into Employee_payroll(name,salary,startDate,gender,phone,address,department,Basic_pay,Deduction,Taxable_pay,Income_tax,Net_pay) values
('Ashish',16000,'2021-05-12','M','7732145678','Delhi','Marketing',NULL,NULL,NULL,NULL,NULL);

SELECT * FROM Employee_payroll where name = 'Ashish';

