
1. Display all rows and all columns:

select * from students;


2. Display all students in the table:

select id, name from students;


3. Display only user id:

select id from students;


4. Display only name :

select name from students;


5. Display only email:

select email from students ;


6. Diplay name and email:

select name, email from students;


7. Display id, name and user creation date: 

select id, name, email, created_on from students;


8. Display users where password 12333:

select name from students where password='12333';


9. Display users when created 2021-03-26 00:00:00:

select * from students where created_on = '2021-03-26 00:00:00';


10. Display users whose name contains the word "Anna":

select name from students where name like '%Anna%';


11. Display users whose name ends with the digit "8":

select name from students where name like '%8';


12. Display users whose name contains the word "a":

select name from students where name like '%a%';


13. Display users who were created on 2021-07-12 00:00:00:

select name from students where created_on ='2021-07-12 00:00:00';


14. Display users who were created on 2021-07-12 00:00:00 and have the password "1m313":

select name from students where created_on ='2021-07-12 00:00:00' and password = '1m313';


15. Display users who were created on 2021-07-12 00:00:00 and the name containing the word "Andrey":

select name from students where created_on ='2021-07-12 00:00:00' and name like '%Andrey%';


16. Display users who were created on 2021-07-12 00:00:00 and the name containing the digit "8":

select name from students where created_on ='2021-07-12 00:00:00' and name like '%8%';


17. Diplay users whose id is equal to 110:

select * from students where id='110';


18. Diplay users whose id is equa to  153:

select * from students where id='153';


19. Diplay users whose id is greater than 140:

select * from students where id>'140';


20. Diplay users whose id is less than 130:

select * from students where id<'130';


21. Diplay users whose id is less than 127 and greater than 188:

select * from students where id<'127' or id>'188';


22. Diplay users whose id is less than or equal to 137:

select * from students where id<='137';


23. Diplay users whose id is greater than or equal to 137:

select * from students where id>='137';


24. Diplay users whose id is greater than 180 and less than 190:

select * from students where id>'180' and id<'190';


25. Diplay users whose id is between 180 and 190:

select * from students where id between 180 and 190;


26. Diplay users whose password is equal to 12333, 1m313, 123313:

select * from students where password in ('12333','1m313', '123313');


27. Diplay users who were creatrd on 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00:

select * from students where created_on in ('2020-10-03 00:00:00','2021-05-19 00:00:00', '2021-03-26 00:00:00');


28. Display id is min:

select min(id) from students;


29. isplay id is max:

select max(id) from students;


30. Display the user count:

select count(id) from students;


31. Display id, name and creation date. Sort by the ascending order of user creation date. 

select id, name, created_on from students order by created_on asc;


32. Display id, name and creation date. Sort by the descending order of user creation date.:

select id, name, created_on from students order by created_on desc










