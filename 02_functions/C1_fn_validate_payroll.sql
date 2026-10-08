CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN employees.employee_id%TYPE,
    p_basic_salary IN NUMBER,
    p_tax IN NUMBER
)
RETURN VARCHAR2
IS
    v_employee_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_employee_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    IF p_basic_salary != v_employee_salary THEN
        RETURN 'INVALID: Basic salary does not match employee salary';
    ELSIF p_tax < 0 THEN
        RETURN 'INVALID: Tax cannot be negative';
    ELSIF p_tax > p_basic_salary THEN
        RETURN 'INVALID: Tax cannot exceed salary';
    ELSE
        RETURN 'VALID';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee not found';
END;
/