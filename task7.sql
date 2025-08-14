CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (student_id, name, age, email) VALUES
(1, 'Arjun', 20, 'arjun@example.com'),
(2, 'Priya', 21, 'priya@example.com'),
(3, 'Ravi', 22, 'ravi@example.com'),
(4, 'Sneha', 20, 'sneha@example.com'),
(5, 'Ananya', 23, 'ananya@example.com');

INSERT INTO marks (mark_id, student_id, subject, marks) VALUES
(1, 1, 'Math', 78),
(2, 1, 'Science', 82),
(3, 2, 'Math', 90),
(4, 2, 'Science', 88),
(5, 3, 'Math', 65),
(6, 3, 'Science', 70),
(7, 4, 'Math', 85),
(8, 4, 'Science', 89),
(9, 5, 'Math', 92),
(10, 5, 'Science', 95);


CREATE VIEW student_average AS SELECT s.student_id,s.name,AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.name;

select * from student_average;

CREATE VIEW student_info AS SELECT student_id,name,age FROM students;

select * from student_info;


