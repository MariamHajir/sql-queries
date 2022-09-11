SELECT name
FROM student
WHERE NOT EXISTS (
SELECT student.id
FROM student , enrolled 
WHERE student.id = enrolled.student_id);