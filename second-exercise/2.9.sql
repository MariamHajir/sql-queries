SELECT dep.name, COUNT(majorsin.student_id) 
FROM department dep, majorsin 
WHERE dep.id = majorsin.department_id
HAVING COUNT(majorsin.student_id) > 1