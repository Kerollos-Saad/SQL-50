# Write your MySQL query statement below
select (
    select
        salary 
    from
        employee
    group by
        salary
    order by
        salary DESC
    limit 
        1,1
) as SecondHighestSalary 