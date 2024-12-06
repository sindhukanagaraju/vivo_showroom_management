create database vivo_showroom_management;

use vivo_showroom_management;

create table vivo_showroom(
    id int primary key,
    branch varchar(155),
	opening_time time,
    closing_time time
    );
     select * from vivo_showroom;
    insert into vivo_showroom (id,branch,opening_time,closing_time)values
                  (1,"Namakkal", "10:00:00" ,"22:00:00"),
                  (2,"Coimbatore", "10:00:00" ,"22:00:00"),
                  (3,"Salem", "10:00:00" ,"22:00:00"),
                  (4,"Chennai", "10:00:00" ,"22:00:00"),
                  (5,"Madurai", "10:00:00" ,"22:00:00"),
                  (6,"Bangalore", "10:00:00" ,"22:00:00"),
                  (7,"Trichy", "10:00:00" ,"22:00:00"),
                  (8,"Erode", "10:00:00" ,"22:00:00"),
                  (9,"Thirunelvelli", "10:00:00" ,"22:00:00"),
                  (10,"Thanjore", "10:00:00" ,"22:00:00");
                  
create table employee(
         id  INT primary key,
         name varchar(50) NOT NULL,
         salary double NOT NULL,
         location varchar(50) NOT NULL,
		 department_id int ,
		 branch_id int ,
         foreign key (department_id) references  employee(id),
		 foreign key (branch_id ) references vivo_showroom(id)  
  );    
  insert into employee (id,name,salary,location,department_id,branch_id )values
                  (1,"shahara", 20000 ,"thirchy",1,6),
                  (2,"harshiya", 34000 , "salem",2,7),
                  (3,"rithanya", 50000 ,"madurai",2,5),
                  (4,"sneha", 11000 ,"chennai",3,5),
                  (5,"Maha", 12000 ,"chennai",4,3),
                  (6,"saswanth", 45000,"Namakkal",5,9),
                  (7,"dhanush", 64880 ,"Namakkal",3,10),
                  (8,"dhivya", 34560 ,"salem",1,4),
                  (9,"geetha", 65000 , "Thanjore",1,1),
                  (10,"viha", 70000 ,"Thanjore",1,8);
  
  insert into employee (id,name,salary,location,department_id,branch_id )values
				  (11,"saswanth", 45000,"salem",5,5),
                  (12,"dhanush", 64880 ,"Namakkal",3,6),
                  (13,"dhivya", 34560 ,"Namakkal",1,4),
                  (14,"geetha", 65000 , "Thanjore",1,2),
                  (15,"viha", 70000 ,"salem",1,3);
                  
                  
                  
 create table department(
    id int primary key,
    name varchar(155),
    branch_id  int,
	employee_id int,
	foreign key (branch_id) references vivo_showroom(id),
    foreign key (employee_id) references employee(id)
    );
    
     insert into department (id,name,branch_id,employee_id )values
                  (1,"purchase", 3 ,5),
                  (2,"sales", 4 , 6),
                  (3,"marketing", 6 ,8),
                  (4,"finance and billing", 1 ,2),
                  (5,"repairs", 2 ,3);
                  

create table customer (
  id int primary key,
  name varchar(50) ,
  phone_number bigint unique,
  email  varchar(50) unique,
  branch_id int,
  product_id int ,
foreign key (branch_id)  references vivo_showroom (id),
foreign key (product_id ) references product (id)
   ); 

    insert into customer (id,name,phone_number, email ,  branch_id , product_id  )values
                  (1,"kaviya", 3767543423 ,"kaviya@gmai.com", 2 , 1),
                  (2,"vidhya", 4765876367 ,"vidhya@gmai.com", 1,5),
                  (3,"kani", 6876981234 ,"kani@gmai.com",8,9),
                  (4,"vaanmathi", 9876981234 ,"vaanmathi@gmai.com",8,3),
                  (5,"madhu", 1134239867 ,"madhu@gmai.com",5,2),
                  (6,"riya", 4767543423 ,"riya@gmai.com", 2 , 4),
                  (7,"priya", 4768876367 ,"priya@gmai.com", 1,6),
                  (8,"mohana", 6896981234 ,"mohana@gmai.com",8,7),
                  (9,"jay", 1134439867 ,"jay@gmai.com",5,10),
                  (10,"ragul", 2852645756 ,"ragul@gmai.com",3,8);
                  
   
CREATE TABLE product (
    id int primary key,
    name  varchar(50) ,
    price int ,
    colour  varchar(50),
    stock int ,
	branch_id int ,
    launch_in DATETIME ,
    foreign key (branch_id) references vivo_showroom (id)
    );
    alter table product add column product_details varchar(100);
     alter table product DROP column product_details;
    select*from product;
     insert into product (id, name, price, colour, stock, branch_id, launch_in)VALUES 
    (1, "vivo T3 lite", 11000, "blue sandal", 5, 4, "2024-04-24 23:34:28"),
    (2, "vivo v30", 29000, "green, maroon", 1, 2, "2024-09-24 10:34:23"),
    (3, "vivo y20", 16876, "acqua green, light blue", 8, 5, "2024-09-04 23:34:23"),
    (4, "vivo v40", 48000, "red, lotus purple, ganges blue", 5, 3, "2024-09-10 06:12:25"),
    (5, "vivo T3x", 16000, "Celestial green", 3, 6, "2024-06-26 19:45:23"),
    (6, "vivo v40pro", 39000, "lotus purple", 5, 8, "2024-07-24 07:34:23"),
    (7, "vivo y58", 19000, "himalayan blue", 6, 1, "2024-04-29 05:34:23"),
    (8, "vivo y28s", 14000, "Twinkling purple", 9, 7, "2025-01-01 03:30:23"),
    (9, "vivo v30e", 26000, "velvet red", 4, 4, "2024-08-14 02:30:23"),
    (10, "vivo T3", 21000, "Crystal flae", 3, 10, "2024-09-04 18:34:23");

                   
    CREATE TABLE sales (
      id int primary key,
      transaction DATETIME ,
      branch_id int ,
      employee_Id int ,
       product_id int ,
       customer_id int ,
	foreign key( employee_Id)  references employee (id),
    foreign key (branch_id)  references vivo_showroom (id),
    foreign key (product_id) references product (id),
   foreign key (customer_id) references customer (id)
    );
    
    insert into sales (id, transaction , branch_id, employee_Id, product_id, customer_id) values  
                 (1,"2024-09-25 11:34:23",3 , 7,  1, 3),
				 (2,"2024-04-30 15:34:23",1 , 5,  7, 1),
				 (3,"2024-09-25 10:34:23",5 , 3,  2, 5),
				 (4,"2024-01-05 16:30:23",2 , 10, 8, 2),
				 (5,"2024-09-09 11:34:23",4 , 2,  3, 7),
				 (6,"2024-08-17 12:30:23",6 , 1,  9, 3),
				 (7,"2024-08-29 17:34:23",10, 4,  6, 9),    
				 (8,"2024-09-05 18:34:23",9 , 8, 10, 4), 
                 (9,"2024-09-16 17:12:25",8 , 9, 4, 10), 
                 (10,"2024-06-29 19:40:23",7, 6,  5, 6); 
                 
 alter table sales add column quantity int;                
 update sales set quantity = 2 where id=1;   
 update sales set quantity = 3 where id=2;   
 update sales set quantity = 2 where id=3;   
 update sales set quantity = 4 where id=4;   
 update sales set quantity = 2 where id=5;   
 update sales set quantity = 1 where id=6;   
 update sales set quantity = 2 where id=7;   
 update sales set quantity = 3 where id=8;    
 update sales set quantity = 2 where id=9;   
 update sales set quantity = 3 where id=10;    
   
delete from sales where id = 1;  

select*from vivo_showroom where branch between "chennai" and "erode" order by branch;

select * from vivo_showroom;
select * from department;
select * from product;
select * from employee;
select * from customer;
select * from sales;

select department.id as department_id ,department.name as  department_name ,employee .id as 
employee_id,employee.name as employee_name,employee.salary from department 
inner join employee on department.employee_id=employee.id
order by employee.id;

select department.id as department_id ,department.name as  department_name ,employee .id as 
employee_id,employee.name as employee_name,employee.salary from department 
right join employee on department.employee_id=employee.id
order by employee.id; 

select customer.id as customer_id ,customer.name as customer_name ,sales.id as 
sales_id from sales 
inner join customer on sales .customer_id=customer.id
order by customer.id;

create view customer_name as select customer.id as customer_id ,customer.name as customer_name ,sales.id as 
sales_id from sales 
inner join customer on sales .customer_id=customer.id;

 select * from customer_name where sales_id=6;
 drop view customer_name; 

 select avg(price) as avg_price from product ;

 select * from product where price> 20000;
  select * from product where price between 10000 and 16000 order by price;
  
select count(*) from employee  ;
select  count(name) from employee where salary = 45000 ;
select  name,count(name) from employee group by name having count(name)>1 ;
select  count(name) from employee group by location having count(id)>1;
select  sum(salary) from employee where location = "namakkal" ;
select * from  employee where location like 'n%';
select * from  customer where name like '_%a';
  
 select  max(price)  from product  where price <  (select max(price) from product) ;
 select max(price)  from product;
 
 select min(price)  from product;
 
 create view sales_details as select sales.id as sales_id ,sales.transaction as sales_date,
 sales.quantity as  sales_quantity, 
department.id as department_id , department.name as  department_name ,
employee .id as employee_id, employee.name as employee_name,
product.id as product_id,  product.name as product_name,
product.colour as product_colour, product.price as product_price,
customer.id as customer_id , customer.name as customer_name ,
sum(sales.quantity*product.price)as total_price ,
vivo_showroom.branch as branch_name 
from sales 
inner join customer on sales .customer_id  = customer.id
inner join employee on sales .employee_id  = employee.id
inner join department on employee.department_id  = department.id
inner join product on sales .product_id  = product.id
inner join vivo_showroom on sales .branch_id  =vivo_showroom.id
group by
 sales.id ,
 sales.transaction,
 sales.quantity, 
 department.id ,
 department.name,
 employee.id,
 employee.name,
 product.id, 
 product.name,
 product.colour,
 product.price,
 customer.id ,
 customer.name ,
 vivo_showroom.branch
order by sales_id;

select * from sales_details; 

select customer_name,employee_name,product_name,branch_name from sales_details;

select customer_name,
product_name,
branch_name, 
product_price, 
sales_quantity ,
sum(sales_quantity*product_price)as total_price 
from  sales_details 
group by customer_name,
product_name,
branch_name, 
product_price, 
sales_quantity ;

drop view sales_details;

alter table sales add column order_id int unique;

update sales set order_id = 101 where id=1;
update sales set order_id = 102 where id=2;
update sales set order_id = 103 where id=3;
update sales set order_id = 104 where id=4;
update sales set order_id = 105 where id=5;
update sales set order_id = 106 where id=6;
update sales set order_id = 107 where id=7;
update sales set order_id = 108 where id=8;
update sales set order_id = 109 where id=9;
update sales set order_id = 110 where id=10;

select* from sales ;
alter table sales drop column order_id ;

create index product_index on product(name);
select name from product use index(product_index);
drop index product_index on product;

alter table sales add column department_id int;
update sales set department_id = 2 where id=1;
update sales set department_id = 4 where id=2;
update sales set department_id = 3 where id=3;
update sales set department_id = 5 where id=4;
update sales set department_id = 1 where id=5;

 delete from sales  where  department_id=5;
alter table sales drop column department_id ;

alter table sales add constraint fk_department_id
foreign key (department_id) references department(id);
select * from sales;
alter table sales drop foreign key fk_department_id;
show columns from sales;
 
 create index vivo_showroom on vivo_showroom(branch);
 select branch from  vivo_showroom use index( vivo_showroom);

select department.id as department_id ,department.name as  department_name ,employee .id as 
employee_id,employee.name as employee_name,employee.salary from department 
left join employee on department.employee_id=employee.id
union all
select department.id as department_id ,department.name as  department_name ,employee .id as 
employee_id,employee.name as employee_name,employee.salary from department 
right join employee on department.employee_id=employee.id;      

 select distinct location from employee;
 

