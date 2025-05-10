# Write your MySQL query statement below

with cte AS (
    select *
        ,sum(amount_g) over 
        (order BY visited_on ASC RANGE BETWEEN INTERVAL '6' DAY PRECEDING AND CURRENT ROW) 
        as tot_amount
        ,round(avg(amount_g) 
        over (order BY visited_on ASC RANGE BETWEEN INTERVAL '6' DAY PRECEDING AND CURRENT ROW), 2)  
        as average_amount 
    from
        (select *,sum(amount) as amount_g from customer group by visited_on) TY
)
select 
    visited_on
    , tot_amount as amount
    , average_amount
from 
    cte
where
    (DATE_ADD(visited_on, INTERVAL -6 DAY))
IN
    (select visited_on from customer)