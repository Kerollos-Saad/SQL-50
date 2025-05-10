# Write your MySQL query statement below
select employee_id
from 
    employees
where
    salary < 30000 AND manager_id IS NOT NULL AND manager_id NOT IN (Select employee_id from employees)
order by
    employee_id