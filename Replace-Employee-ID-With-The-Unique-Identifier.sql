# Write your MySQL query statement below
select employeeUNI.unique_id, employees.name 
from employees
left JOIN employeeUNI 
ON employeeUNI.id = employees.id;