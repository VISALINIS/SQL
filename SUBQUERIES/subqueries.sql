SELECT * FROM employees;
SELECT * FROM departments;

-- Find employees earning more than average salary
select name,salary from employees 
where salary > (select avg(salary) from employees) 

-- Find employees working in departments located in Chennai.
select name from employees 
where dept_id in  (select dept_id 
from departments where location = "chennai")

-- Find employee with maximum salary
select name,salary from employees
where salary = (select max(salary) from employees)

-- Find employees in same department as Alice

select name from employees 
where dept_id = (select dept_id from employees
where name = "Alice")

-- Find employees earning less than avg salary of their department
-- correlated subquery
select e1.name from employees as e1
where e1.salary < (select avg(e2.salary) from employees as e2
where e1.dept_id = e2.dept_id
)

-- Find departments where avg salary > overall avg
select dept_id from employees 
group by dept_id
having avg(salary)> (select avg(salary) from employees)

-- find employee with no dept
select name from employees where dept_id is null

-- find employees earning more than any salary in dept 2
 select name, salary from employees 
 where salary > any(select salary from employees 
 where dept_id = 2)
 
 -- find employees earning more than all salaries in dept 2
 select name,salary from employees
 where salary > all(select salary from employees 
 where dept_id =2)
 
 -- Find second highest salary employee
 select name,salary from employees
 where salary = (select max(salary) from employees
 where salary < (select max(salary) from employees))
 
-- Find employees earning more than their manager

select name,salary from employees e1
where salary > (select salary from employees e2 