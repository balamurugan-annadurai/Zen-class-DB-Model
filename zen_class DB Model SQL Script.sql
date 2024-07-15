CREATE DATABASE zen_class;
use zen_class;

CREATE TABLE courses(
 id INT PRIMARY KEY,
 course_name TEXT,
 course_des TEXT,
 course_duration VARCHAR(200)
);

CREATE TABLE batches(
 id INT PRIMARY KEY,
 batch_name VARCHAR(200),
 batch_details TEXT,
 course_id INT,
 FOREIGN KEY(course_id) REFERENCES courses(id) 
);

DESCRIBE batches;

CREATE TABLE students(
 id INT PRIMARY KEY,
 user_name VARCHAR(100),
 user_password TEXT,
 user_email VARCHAR(100),
 course_id INT,
 batch_id INT,
 FOREIGN KEY(course_id) REFERENCES courses(id),
 FOREIGN KEY(batch_id) REFERENCES batches(id)
);

DESCRIBE students;

CREATE TABLE mentors(
 id INT PRIMARY KEY,
 mentor_name VARCHAR(100),
 mentor_email VARCHAR(100),
 course_id INT,
 FOREIGN KEY(course_id) REFERENCES courses(id)
);

DESCRIBE mentors;

CREATE TABLE class(
 id INT PRIMARY KEY,
 class_title VARCHAR(200),
 class_des TEXT,
 start_time VARCHAR(200),
 end_time VARCHAR(200),
 course_id INT,
 mentor_id INT,
 FOREIGN KEY(course_id) REFERENCES courses(id),
 FOREIGN KEY(mentor_id) REFERENCES mentors(id)
);

DESCRIBE class;

CREATE TABLE feedbacks(
 id INT PRIMARY KEY,
 mentor_feedback TEXT,
 session_feedback TEXT,
 key_takeaways TEXT,
 mentor_id INT,
 student_id INT,
 class_id INT,
 FOREIGN KEY(mentor_id) REFERENCES mentors(id),
 FOREIGN KEY(student_id) REFERENCES students(id),
 FOREIGN KEY(class_id) REFERENCES class(id)
);

DESCRIBE feedbacks;

CREATE TABLE attendance(
 id INT PRIMARY KEY,
 attended BOOLEAN,
 student_id INT,
 class_id INT,
 FOREIGN KEY(student_id) REFERENCES students(id),
 FOREIGN KEY(class_id) REFERENCES class(id)
);

DESCRIBE attendance;

CREATE TABLE tasks (
 id INT PRIMARY KEY,
 task_name TEXT,
 task_link TEXT
);

CREATE TABLE marks (
 id INT PRIMARY KEY,
 marks INT,
 mentor_id INT,
 student_id INT,
 task_id INT,
 FOREIGN KEY(mentor_id) REFERENCES mentors(id),
 FOREIGN KEY(student_id) REFERENCES students(id),
 FOREIGN KEY(task_id) REFERENCES tasks(id)
);

DESCRIBE marks;

CREATE TABLE queries(
 id INT PRIMARY KEY,
 query_title TEXT,
 query_des TEXt,
 student_id INT,
 FOREIGN KEY(student_id) REFERENCES students(id)
);

DESCRIBE queries;

