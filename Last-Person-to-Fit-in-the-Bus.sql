# Write your MySQL query statement below

with cte AS (
    select
        *
        ,sum(weight) over (order by turn) as Total_Weight
    from
        queue
)
select 
    person_name
from 
    cte
where
    Total_Weight <= 1000
order by 
    turn desc
limit 
    1