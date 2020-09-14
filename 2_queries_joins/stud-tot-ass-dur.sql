select sum(assignment_submissions.duration) as total_duration
from students join assignment_submissions on students.id = assignment_submissions.student_id
where name = 'Ibrahim Schimmel';