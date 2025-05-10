# Write your MySQL query statement below
select id
    ,sum(occurrence) as num
from 
(
    select accepter_id as id
        ,count(requester_id) as occurrence
    from 
        RequestAccepted 
    group by
        accepter_id

    UNION ALL

    select requester_id as id
        ,count(accepter_id) as occurrence
    from 
        RequestAccepted 
    group by
        requester_id
) as T
group by
    id
order by
    num desc
limit
    1