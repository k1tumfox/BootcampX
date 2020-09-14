select cohorts.name as cohort_name, count(students.*) as student_count
from cohorts
join students on students.cohort_id = cohorts.id
group by cohorts.name
having count(students.*) >= 18
order by count(students.*) asc;
