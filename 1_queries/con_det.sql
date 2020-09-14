SELECT name, id, cohort_id
FROM students
WHERE phone is null or email is null;