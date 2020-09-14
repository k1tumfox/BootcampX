select students.name as student, avg(assignment_submissions.duration) as avg_assign_duration
from assignment_submissions
join students on students.id = student_id
where students.end_date is null
group by students.name
order by avg_assign_duration desc;