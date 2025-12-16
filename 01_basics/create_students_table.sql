CREATE TABLE students(
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER,
  email TEXT UNIQUE,
  created_at TIMESTAMP
);