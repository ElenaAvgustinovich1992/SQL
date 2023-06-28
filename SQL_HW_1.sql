create table employees (
id serial  primary key,
employee_name Varchar(50) not null
);

insert into employees (employee_name)
values 
           ('Lena'),
           ('Dima'),
           ('Sveta'),
           ('Sergey'),
           ('Nikita'),
           ('Danila'),
           ('Oleg'),
           ('Olya'),
           ('Anna'),
           ('Danya'),
           ('Lera'),
           ('Kristina'),
           ('Sveta'),
           ('Sergey'),
           ('Nikita'),
           ('Danila'),
           ('Oleg'),
           ('Olya'),
           ('Anna'),
           ('Anna'),
           ('Danya'),
           ('Lera'),
           ('Kristina'),
           ('Sveta'),
           ('Sergey'),
           ('Nikita'),
           ('Danila'),
           ('Yura'),
           ('Alina'),
           ('Nikolay'),
           ('Yan'),
           ('Vitya'),
           ('Tanya'),
           ('Anna'),
           ('Anna'),
           ('Danya'),
           ('Lera'),
           ('Kristina'),
           ('Nikita'),
           ('Danila'),
           ('Lena'),
           ('Dima'),
           ('Sveta'),
           ('Sergey'),
           ('Nikita'),
           ('Danila'),
           ('Oleg'),
           ('Olya'),
           ('Anna'),
           ('Danya'),
           ('Lera'),
           ('Kristina'),
           ('Sveta'),
           ('Sergey'),
           ('Nikita'),
           ('Danila'),
           ('Oleg'),
           ('Olya'),
           ('Anna'),
           ('Anna'),
           ('Danya'),
           ('Lera'),
           ('Kristina'),
           ('Sveta'),
           ('Sergey'),
           ('Nikita'),
           ('Danila'),
           ('Yura'),
           ('Alina'),
           ('Nikolay')
         
 select * from employees       
  
  
 create table salary (
 id serial  primary key, 
 monthly_salary Int not null 
 )
           
 insert into salary (monthly_salary)    
 values
          (1000),
          (1100),
          (1200),
          (1300),
          (1400),
          (1500),
          (1600),
          (1700),
          (1800),
          (1900),
          (2000),
          (2100),
          (2200),
          (2300),
          (2400),
          (2500)

 select * from salary     
 
 create table employee_salary (
 id serial  primary key, 
 employee_id Int not null unique,
 salary_id Int not null
 )
  
 insert into employee_salary (employee_id, salary_id )
 values 
         (1,1),
         (2,15),
         (3,5),
         (4,7),
         (5,8),
         (6,10),
         (7,11),
         (8,1),
         (9,12),
         (10,4),
         (11,6),
         (12,9),
         (13,5),
         (14,8),
         (22,6),
         (23,6),
         (24,5),
         (25,2),
         (28,1),
         (29,7),
         (30,9),
         (100,5),
         (180,8),
         (102,4),
         (99,8),
         (97,7),
         (120,2),
         (130,5),
         (15,2),
         (16,3),
         (17,9),
         (18,2),
         (19,8),
         (20,3),
         (21,6),
         (26,6),
         (27,9),
         (556,9),
         (777,7),
         (999,2)
         
select * from employee_salary         

create table roles (
id serial  primary key, 
role_name int not null unique
)
alter table roles
alter column role_name type varchar(30)

insert into roles (role_name)
values 
        ('Junior Python developer'),
        ('Middle Python developer'),
        ('Senior Python developer'),
        ('Junior Java developer'),
        ('Middle Java developer'),
        ('Senior Java developer'),
        ('Junior JavaScript developer'),
        ('Middle JavaScript developer'),
        ('Senior JavaScript developer'),
        ('Junior Manual QA engineer'),
        ('Middle Manual QA engineer'),
        ('Senior Manual QA engineer'),
        ('Project Manager'),
        ('Designer'),
        ('HR'),
        ('CEO'),
        ('Sales manager'),
        ('Junior Automation QA engineer'),
        ('Middle Automation QA engineer'),
        ('Senior Automation QA engineer')
        
select * from roles        
        
create table roles_employee (
id serial  primary key, 
employee_id Int not null unique,
role_id Int not null,
      
                foreign key (employee_id)
				references employees(id),
				foreign key (role_id)
				references roles(id)
)				
				
insert into roles_employee(employee_id, role_id)  
values 
         (1,1),
         (2,2),
         (3,4),
         (5,7),
         (6,8),
         (7,1),
         (8,11),
         (9,9),
         (10,13),
         (11,12),
         (12,4),
         (13,6),
         (14,7),
         (15,2),
         (16,9),
         (17,2),
         (18,9),
         (19,4),
         (20,8),
         (21,1),
         (22,5),
         (23,8),
         (24,9),
         (25,9),
         (26,4),
         (27,9),
         (28,7),
         (29,8),
         (30,1),
         (31,6),
         (32,6),
         (33,2),
         (34,7),
         (35,9),
         (36,9),
         (37,2),
         (38,9),
         (39,5),
         (40,1),
         (4,9)
         
         
select * from roles_employee         
        
        
        
        
        
        
        
        
        
        

           
           