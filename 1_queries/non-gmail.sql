SELECT name, email, id, cohort_id
FROM students
WHERE email <> '%gmail.com' and phone is null