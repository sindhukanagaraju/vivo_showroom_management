create database cadbury;
drop database cadbury;
use cadbury;
create table employee(
  name varchar(36) not null,
  ID int,
  e_mail varchar(45) unique,
  primary key(ID),
  location varchar(65)
  );
  
  insert into employee (name,ID,e_mail,location) values 
      ("suriya",1,"suriya@gmail.com","velur"),
      ("sindhu",2,"sindhu@gmail.com","namakkal"),
      ("Aashika",3,"aashika@gmail.com","velur"),
      ("Bhuvana",4,"bhuvana@gmail.com","salem"),
      ("Hema",5,"hema@gmail.com","coimbatore"),
      ("vignesh",6,"vignesh@gmail.com","velur");
 select * from employee;
 
create table organisation(
      department varchar(56),
      roll_no int ,
      ID int,
      primary key(roll_no),
      foreign key (ID) references employee(ID)
      );
insert into organisation (department, roll_no, ID) values 
            ("purchase", 1 , 5),
            ("sales", 2 , 4),
            ("tax" , 3,  1),
            ("finance", 4 , 3),
            ("marketing", 5 , 2);
select * from organisation;
 select * from employee;
      
     
