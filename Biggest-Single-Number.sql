# Write your MySQL query statement below
select max(num) as num
from 
    mynumbers
where 
    (num, 1)
IN
    (select num, COUNT(*) from mynumbers group by num)


