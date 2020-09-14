select cohorts.name, count(assignment_submissions.*) as total_submissions
from cohorts
join students on students.cohort_id = cohorts.id
join assignment_submissions on assignment_submissions.student_id = students.id
group by cohorts.name 
order by total_submissions desc;