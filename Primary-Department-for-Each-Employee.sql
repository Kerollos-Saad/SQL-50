# Write your MySQL query statement below
(
    SELECT 
    employee_id, 
    department_id 
    FROM 
    Employee 
    WHERE 
    primary_flag = 'Y' 
    )
UNION 
(
    SELECT 
    employee_id, 
    department_id 
    FROM 
    Employee 
    GROUP BY 
    employee_id 
    HAVING 
    COUNT(employee_id) = 1
    )
-- ------------------------------------------------------------
-- select employee_id, department_id
-- from
--     employee
-- where
--     primary_flag  = 'Y'
--     OR
--     (employee_id, department_id)
--     IN
--     (
--     select employee_id, department_id from employee 
--     group by employee_id
--     having count(employee_id) = 1 AND primary_flag  = 'N' )


