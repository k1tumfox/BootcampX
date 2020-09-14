select students.name as student, avg(assignment_submissions.duration) as avg_assign_duration, avg(assignments.duration) as avg_est_duration
from assignment_submissions
join students on students.id = student_id
join assignments on assignments.id = assignment_id
where students.end_date is null
group by students.name 
having avg(assignment_submissions.duration) < avg(assignments.duration)
order by avg_assign_duration asc;