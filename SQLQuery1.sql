create database emp;
create table emp(
emp_id int not null,
emp_name varchar(20),
department_id int,
salary int,
manager_id int
);

insert into emp values(
1,'ankit',100,10000,4);
insert into emp values(
2,'mohit',100,15000,5);
insert into emp values(
3,'vikas',100,10000,4);
insert into emp values(
4,'rohit',100,5000,2)
insert into emp values(
5,'mudit',200,12000,6);
insert into emp values(
6,'agam',200,12000,2)
insert into emp values(
7,'sanjay',200,9000,2)
insert into emp values(
8,'ashish',200,5000,2)

select * from emp
where salary >10000

select department_id,avg(salary)
from emp group by department_id
having avg(salary) > 9500

select department_id,avg(salary) from emp 
where salary >10000
group by department_id
having avg(salary)>10000;


Rank dense_rank,row number SQL


SELECT EMP_ID,EMP_NAME,DEPARTMENT_ID,SALARY
,RANK() OVER (ORDER BY SALARY DESC) FROM EMP;


SELECT emp_id,emp_name,department_id,salary,
rank() over(order by salary desc) as rnk,
dense_rank() over(order by salary desc) as densk_rank
from emp;


SELECT emp_id,emp_name,department_id,salary,
rank() over(order by salary desc) as rnk,
dense_rank() over(order by salary desc) as densk_rank,
row_number() over(order by salary desc) as rnk
from emp;

















