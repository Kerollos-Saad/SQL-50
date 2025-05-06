# Write your MySQL query statement below

select user_id,
    ROUND(
        AVG(
            IF(confirmations.action = 'confirmed', 1.00, 0)
        ), 2
    ) confirmation_rate
from signups
left join confirmations using( user_id )
group by user_id

-- HAVING action = 'confirmed'

-- select *, Count(*) as Tot_occurrence 
-- from Confirmations
-- Join signups
-- group by Confirmations.user_id


-- (select *
-- from signups
-- left join confirmations using( user_id ))