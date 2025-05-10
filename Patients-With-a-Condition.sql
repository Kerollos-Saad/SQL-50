# Write your MySQL query statement below
select *
from
    patients
where
    conditions Like '% DIAB1%' OR conditions Like 'DIAB1%'