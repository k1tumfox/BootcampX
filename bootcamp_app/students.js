const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT id, name, cohort.name
FROM students
JOIN cohorts on cohort_id = cohorts.id
LIMIT 5;
`)
.then(res => {
  // console.log(res.rows);
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student.id} and was in the ${user.cohort} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));