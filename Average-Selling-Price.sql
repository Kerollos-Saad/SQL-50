# Write your MySQL query statement below
select product_id
    ,IFNULL(
        Round( 
            SUM(units * price) / SUM(units) 
            ,2)
        , 0 ) 
    as average_price 
from 
    unitsSold
right join
    prices
using 
    (product_id)
where
    purchase_date >= start_date AND purchase_date <= end_date || ISNULL(purchase_date)
group by
    product_id