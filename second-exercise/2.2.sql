SELECT *
FROM course 
HAVING course.start_time = MIN(course.start_time)