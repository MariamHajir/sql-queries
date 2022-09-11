SELECT COUNT(enrolled.student_id)
FROM departments dep, majorsin m, enrolled e
WHERE dep.id = m.department_id AND m.student_id = e.student_id AND dep.name = "CS" AND e.crn = "CSC275"