select count(assistance_requests.*) as total_assistances, students.name
from assistance_requests
join students on student_id = students.id
where name = 'Elliot Dickinson'
group by students.name;