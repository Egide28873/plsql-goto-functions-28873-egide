SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.monthly_salary,
    fn_annual_salary(e.employee_id) AS annual_salary,
    fn_years_of_service(e.employee_id) AS years_of_service,
    fn_calculate_tax(e.monthly_salary) AS tax,
    fn_dept_name(e.employee_id) AS department
FROM employees e;