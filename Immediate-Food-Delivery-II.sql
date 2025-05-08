# Write your MySQL query statement below
select ROUND(
    COUNT( 
        CASE WHEN (order_date = customer_pref_delivery_date) 
        THEN 1 END) / COUNT(*) * 100
    , 2) as immediate_percentage 
from 
    delivery
WHERE 
    (customer_id, order_date)
In
(
    select customer_id, Min(order_date) from delivery group by customer_id
)