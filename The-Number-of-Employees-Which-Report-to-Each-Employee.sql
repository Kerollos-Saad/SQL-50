# Write your MySQL query statement below
select 
    E.employee_id as employee_id 
    ,E.name as name  
    ,Count(R.employee_id) as reports_count
    ,Round(avg(R.age)) as average_age 
from
    employees E
join 
    employees R
ON
    E.employee_id = R.reports_to
group by 
    R.reports_to 
order by 
    employee_id