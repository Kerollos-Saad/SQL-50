# Write your MySQL query statement below
select name, bonus
from
    employee
left join
    bonus
using
    (empId)
Where
    bonus < 1000 || ISNULL(bonus)
