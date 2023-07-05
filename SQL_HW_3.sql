
1. Select all employees whose salaries are present 
in the database , along with their salaries:

select e.employee_name , s.monthly_salary from
employees e join employee_salary es 
on e.id=es.employee_id 
join salary s on s.id = es.salary_id ;


2. Select all employees whose salary is less than 2000:

select e.employee_name, s.monthly_salary from
employees e join employee_salary es 
on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where s.monthly_salary <'2000';


3. Select all salary positions where no employee is 
assigned ( salary exists, but it is unclear who receives it):

select e.employee_name, s.monthly_salary from 
employee_salary es left join employees e 
on e.id = es.employee_id 
join salary s on s.id = es.salary_id
where e.employee_name is null;


4. Select all salary positions less than 2000 where no employee is 
assigned ( salary exists, but it is unclear who receives it):

select e.employee_name, s.monthly_salary from 
employee_salary es left join employees e 
on e.id = es.employee_id 
join salary s on s.id = es.salary_id
where e.employee_name is null and s.monthly_salary <'2000';


5. Find all employees who have not been paid their salary:

select e.employee_name, s.monthly_salary from 
 employee_salary es right join employees e
on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where s.monthly_salary is null;


6. Select all employees with the names of their positions:

select e.employee_name, r.role_name from 
roles_employee re join employees e 
on re.employee_id =e.id 
join roles r on r.id = re.role_id;


7. Select names and positions of only Java developers:

select e.employee_name, r.role_name from 
roles_employee re join employees e 
on re.employee_id =e.id 
join roles r on r.id = re.role_id
where r.role_name like '%Java%' and r.role_name not like '%Script%';


8. Select names and names positions of only Python developers:

select e.employee_name, r.role_name from 
roles_employee re join employees e 
on re.employee_id =e.id 
join roles r on r.id = re.role_id
where r.role_name like '%Python%';


9. Select names and positions of all QA engineers:

select e.employee_name, r.role_name from 
roles_employee re join employees e 
on re.employee_id =e.id 
join roles r on r.id = re.role_id
where r.role_name like '%QA%';


10. Select names and positions of  manual QA engineers:

select e.employee_name, r.role_name from 
roles_employee re join employees e 
on re.employee_id =e.id 
join roles r on r.id = re.role_id
where r.role_name like '%Manual QA%';


11. Select names and positions of automation QA engineers:

select e.employee_name, r.role_name from 
roles_employee re join employees e 
on re.employee_id =e.id 
join roles r on r.id = re.role_id
where r.role_name like '%Automation QA%';


12. Select names and salaries of Junior specialists:

select e.employee_name, role_name,s.monthly_salary from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Junior%';


13. Select names and salaries  of Middle specialists:

select e.employee_name, role_name,s.monthly_salary from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Middle%';


14. Select names and salaries of Senior specialists:

select e.employee_name, role_name,s.monthly_salary from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Senior%';


15. Select salaries of Java developers:

select  s.monthly_salary from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Java dev%';


16. Select salaries of Python developers:

select  s.monthly_salary from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Python%';


17. Select names and salaries of Junior Python developers:

select  s.monthly_salary , employee_name from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Junior Python dev%';


18. Select names and salaries of Middle JS developers:

select  s.monthly_salary , employee_name from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Middle JavaScript dev%';


19. Select names and salaries of Senior Java developers:

select  s.monthly_salary , employee_name from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Senior Java dev%' and role_name not like '%Script%';


20. Select salaries of Junior QA Engineer:

select  s.monthly_salary , role_name from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%junior%' and r.role_name like '%QA%';


21. Select the average salary of all Junior specialists:

select avg(s.monthly_salary) from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Junior%';


22. Select the sum salary of JS developers;

select sum(s.monthly_salary) from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%JavaScript dev%';


23. Select the minimum salary of QA Engineer:

select min(s.monthly_salary) from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%QA%';


24. Select the maximum salary of QA Engineer:

select max(s.monthly_salary) from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%QA%';


25. Select the count of QA Engineers:

select count(r.role_name) from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%QA%';


26. Select the count Middle specialists:

select count(r.role_name) from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%Middle%';


27. Select the count developers:

select count(r.role_name) from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%dev%';


28. Select sum salary of developers:

select sum(s.monthly_salary) from 
employees e join roles_employee re 
on e.id =re.employee_id 
join roles r
on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where r.role_name like '%dev%';


29. Select name, positions and salary of all specialists in ascending order:

select e.employee_name , r.role_name , s.monthly_salary 
from  employees e join roles_employee re 
on e.id =re.employee_id 
join roles r on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
order by s.monthly_salary asc;


30. Select name, positions and salaries in ascending order for specialists
whose salary is between 1700 and 2300:

select e.employee_name , r.role_name , s.monthly_salary 
from  employees e join roles_employee re 
on e.id =re.employee_id 
join roles r on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where s.monthly_salary between '1700' and '2300'
order by s.monthly_salary asc ;


31. Select name, positions and salaries in ascending order for specialists
whose salary is less than 2300:

select e.employee_name , r.role_name , s.monthly_salary 
from  employees e join roles_employee re 
on e.id =re.employee_id 
join roles r on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where s.monthly_salary<'2300'
order by s.monthly_salary asc ;


32.  Select name, positions and salaries in ascending order for specialists
whose salary is equal to 1100, 1500 and 2000:

select e.employee_name , r.role_name , s.monthly_salary 
from  employees e join roles_employee re 
on e.id =re.employee_id 
join roles r on re.role_id =r.id
join salary s on s.id =r.id 
join employee_salary es on s.id =es.salary_id 
where s.monthly_salary in ('1100', '1500', '2000')
order by s.monthly_salary asc;















