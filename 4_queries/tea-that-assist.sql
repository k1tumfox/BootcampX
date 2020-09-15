select distinct teachers.name as teacher, cohorts.name as cohort
from assistance_requests
join teachers on teachers.id = teacher_id
join students on student_id = students.id
join cohorts on cohorts.id = cohort_id
where cohorts.name = 'JUL02'
order by teacher;