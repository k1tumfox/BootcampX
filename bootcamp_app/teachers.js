const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


pool.query(`
select distinct teachers.name as teacher, cohorts.name as cohort
from assistance_requests
join teachers on teachers.id = teacher_id
join students on student_id = students.id
join cohorts on cohorts.id = cohort_id
where cohorts.name LIKE '${process.argv[2] || 'JUL02'}'
order by teacher;
`)
.then(res => {
  // console.log(res.rows);
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));