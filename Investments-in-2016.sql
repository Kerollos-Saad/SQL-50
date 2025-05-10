# Write your MySQL query statement below
-- SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
-- FROM Insurance
-- WHERE tiv_2015 IN (
--     SELECT tiv_2015
--     FROM Insurance
--     GROUP BY tiv_2015
--     HAVING COUNT(*) > 1
-- )
-- AND (lat, lon) IN (
--     SELECT lat, lon
--     FROM Insurance
--     GROUP BY lat, lon
--     HAVING COUNT(*) = 1
-- );

with cte AS (
    select 
        *
    from
        Insurance
    group by
        lat, lon
    having
        count(lat) = 1 AND 
        count(lon) = 1 AND 
        tiv_2015 IN (select tiv_2015 from Insurance group by tiv_2015 having count(tiv_2015) > 1)
    ) 
select
    round(sum(tiv_2016),2) as tiv_2016
from
    cte