select day, count(assignments.*) as total_assignments
from assignments
group by day
order by day asc;