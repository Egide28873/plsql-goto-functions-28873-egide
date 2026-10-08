CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_employee_id IN employees.employee_id%TYPE
)
RETURN NUMBER
IS
    v_monthly_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_monthly_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    RETURN v_monthly_salary * 12;
END;
/