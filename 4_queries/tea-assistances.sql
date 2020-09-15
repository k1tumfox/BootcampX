select teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
from assistance_requests
join teachers on teachers.id = teacher_id
join students on student_id = students.id
join cohorts on cohorts.id = cohort_id
where cohorts.name = 'JUL02'
group by teachers.name, cohorts.name
order by teacher;