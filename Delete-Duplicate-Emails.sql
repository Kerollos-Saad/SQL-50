# Write your MySQL query statement below

-- delete 
--     p1
-- from
--     person p1
-- join
--     person p2
-- ON
--     p1.email = p2.email AND p1.id > p2.id


DELETE FROM Person
WHERE Id NOT IN (
    SELECT MIN(Id) FROM 
    (SELECT Id, Email FROM Person) T GROUP BY Email
);