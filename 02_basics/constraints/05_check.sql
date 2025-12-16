CREATE TABLE students (
student_id INTEGER PRIMARY KEY,
age INTEGER CHECK (age >= 18)
);