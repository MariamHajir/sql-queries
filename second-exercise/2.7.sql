SELECT COUNT(student_id)
FROM majorsin , departments dep
WHERE majorsin.department_id = dep.id AND dep.name = "CS"