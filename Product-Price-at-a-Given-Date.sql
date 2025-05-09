# Write your MySQL query statement below
select 
    product_id
    ,new_price as price 
from
    products
where
    change_date <= "2019-08-16"
    AND
    (product_id, change_date) 
    IN 
    (select product_id, Max(change_date) from products 
    where change_date <= "2019-08-16" group by product_id)

UNION

select product_id, IF(new_price, 10, 0) as price from products 
group by product_id having min(change_date) > "2019-08-16" 

