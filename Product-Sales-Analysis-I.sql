# Write your MySQL query statement below
select p.product_name, s.year, s.price
from sales s
inner join product p
On s.product_id = p.product_id