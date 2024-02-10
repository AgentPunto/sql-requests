SELECT projects.project_name, titles.titel_name, AVG(positions.salary) AS avg_salary
FROM positions 
	INNER JOIN projects ON positions.project_id = projects.project_id
	INNER JOIN titles ON positions.title_id = titles.id
WHERE title_id = 'd132a4d1-c578-4d87-ab51-d6c9f1703cd5' AND positions.project_id = 'dcde2895-501b-4b9a-a375-4fb6541fa5ec'
GROUP BY project_name, titel_name;

SELECT CONCAT(last_name, ' ', first_name) AS first_and_last_name, titel_name
FROM positions
	INNER JOIN employee ON positions.employee_id = employee.employee_id
    INNER JOIN titles ON positions.title_id = titles.id
GROUP BY positions.employee_id, first_name, last_name, titel_name
HAVING COUNT(project_id) > 1;