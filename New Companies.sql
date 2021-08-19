-- MySQL
-- New Companies

SELECT c.company_code, 
c.founder, 
count(distinct e.lead_manager_code), 
count(distinct e.senior_manager_code), 
count(distinct e.manager_code), 
count(distinct e.employee_code)
FROM company c
INNER JOIN employee e ON e.company_code = c.company_code
GROUP BY c.company_code,c.founder
ORDER BY c.company_code;
