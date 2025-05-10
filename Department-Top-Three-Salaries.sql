# Write your MySQL query statement below
WITH cte AS 
    (
    select 
        d.name AS Department, 
        salary AS Salary, 
        e.name AS Employee, 
        DENSE_RANK() over (PARTITION BY d.id order by salary DESC) AS rnk
    from
        employee e
    join
        department d
    ON
        e.departmentId = d.id
    )
select 
    Department, Employee, Salary
from
    cte
where
    rnk <=3