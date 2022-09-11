SELECT course.name
FROM departments dep, majorsin m, enrolled e, courses c
WHERE dep.id = m.department_id AND m.student_id = e.student_id AND course.crn = e.crn AND dep.name = "BIF"