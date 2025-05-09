# Write your MySQL query statement below
select product_id
    , year as first_year
    , quantity
    , price
from
    sales
where
    (product_id, year) 
IN
    (
        select product_id, Min(year) from sales group by product_id
    )