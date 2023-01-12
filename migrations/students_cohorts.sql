-- login every time:
-- cd bootcampx
-- psql
-- \c bootcampx;

-- * all tables in bootcampx database:
-- 1. assignment_submissions table: id, assignment_id, student_id, submission_date, duration
-- 2. assignments table: id, name, content, duration, day, chapter
-- 3. cohorts table: id, name, start_date, end_date
-- 4. students table: id, name, email, phone, github, start_date, end_date, cohort_id
-- 5. teachers: id, name, is_active, start_date, end_date
-- 6. assistance_requests: id, student_id, teacher_id, assignment_id, created_at, started_at, completed_at, student_feedback, teacher_feedback

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL, 
  name VARCHAR(255) NOT NULL,
  start_date DATE, 
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255), 
  phone VARCHAR(32),
  github VARCHAR(255), 
  start_date DATE, 
  end_date DATE, 
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);
