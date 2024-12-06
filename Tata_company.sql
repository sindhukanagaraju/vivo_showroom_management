 create database tata_company;
drop  database tata_company;
use  tata_company;


create table employees_details(
  ID int auto_increment,
  name varchar(10),
  age int ,
  primary key(ID)  
);


select* from employees_details;
/*alter table tata_company auto_increment = 100;*/


insert into  employees_details (name , age) values ("sharmika",23),
           ("nivishna" , 21),
           ("rohini" ,21);
           
delete from employees_details where ID = 7;

update employees_details set name  = "rohini", age=21 where ID=3;

insert into  employees_details (name , age) values ("rohini" ,21);
insert into  employees_details (name , age) values ("shandhiya",32);
insert into employees_details (name,age) values ("sindhu",21);


alter table employees_details add column District varchar(32);
update employees_details set District = "namakkal" where ID=1;
update employees_details set District = "namakkal" where ID=1;
update employees_details set District = "salem" where ID=2;
update employees_details set District = "coimbatore" where ID=3;
update employees_details set District = "namakkal" where ID=4;
update employees_details set District = "namakkal" where ID=5;

alter table employees_details drop column District ;

select *  from employees_details where District ="namakkal";
select * from employees_details where age >21;
select * from employees_details where age =21;
select * from employees_details where District Like 'n%';
select * from employees_details where age = 21 or age = 23;
select * from employees_details ;
select * from employees_details where age >= 21 and age = 23;
select * from employees_details order by age;
select * from employees_details order by name desc;
select * from employees_details where name Like  "%%%%_i";
select * from employees_details where not name = "sindhu";


select * from employees_details limit 5 ;


select min(age) from employees_details;
select max(age) from employees_details ;
select count(*) from employees_details ;
select sum(salary) from employees_ details;


alter table employees_details add column salary int;
update  employees_details set salary = 67800 where ID=1;
update  employees_details set salary = 56800 where ID=2;
update  employees_details set salary = 97800 where ID=3;
update  employees_details set salary = 37800 where ID=4;
update  employees_details set salary = 87800 where ID=5;

insert into employees_details (name , age , District , salary )values ("kaviya",25,"chennai",58764) ;
select *  from employees_details ;
insert into employees_details (name , age , District , salary )values ("diya",25,"chennai",58764) ;
use  tata_company;


select age ,sum(salary) as Total_salary FROM  employees_details  GROUP BY age ;
SELECT SUM(salary) AS Total_salary 
FROM employees_details 
GROUP BY age 
LIMIT 0, 10;

select distinct age from employees_details; 
select id, sum(age) as Total_age FROM employees_details GROUP BY id;

select avg(salary) from employees_details; 
select * from employees_details where age between 21 and 32;

select sum(salary) as  total_salary from employees_details ;
select age, sum(salary) as total_salary from employees_details group by age;
SELECT SUM(salary) AS Total_salary 
FROM employees_details 
GROUP BY age ;