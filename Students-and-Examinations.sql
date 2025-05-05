# Write your MySQL query statement below

select s.student_id, s.student_name, sub.subject_name, Count(e.student_id) as attended_exams
from 
    students s
cross join
    subjects sub
left join 
    Examinations e
using 
    (student_id, subject_name)
group by 
    student_id, subject_name
order by
    student_id, subject_name