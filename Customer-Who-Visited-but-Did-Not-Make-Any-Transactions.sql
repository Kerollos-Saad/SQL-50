# Write your MySQL query statement below
select v.customer_id,  Count(v.visit_id) as count_no_trans
from visits v
left join transactions t
On v.visit_id = t.visit_id 
Where transaction_id is null
group by customer_id 