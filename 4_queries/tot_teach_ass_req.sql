select count(assistance_requests.*) as total_assistances, teachers.name as name
from teachers
join assistance_requests on assistance_requests.teacher_id = teachers.id
where name = 'Waylon Boehm'
group by teachers.name;