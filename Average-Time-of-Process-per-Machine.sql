# Write your MySQL query statement below
select machine_id, 
    ROUND(AVG(A2.timestamp - A1.timestamp),3) as processing_time 
from 
    Activity as A1
join 
    Activity as A2
using 
    (machine_id, process_id)
Where
    A1.activity_type = 'start' AND  A2.activity_type = 'end'
group by
    machine_id