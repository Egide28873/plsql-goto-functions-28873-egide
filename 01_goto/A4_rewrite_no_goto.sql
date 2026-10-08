SET SERVEROUTPUT ON;

DECLARE
    v_employee_id employees.employee_id%TYPE := 101;
    v_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

    IF v_salary < 500000 THEN
        DBMS_OUTPUT.PUT_LINE('Review: Salary increase recommended.');
    ELSIF v_salary <= 800000 THEN
        DBMS_OUTPUT.PUT_LINE('Review: Salary is satisfactory.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Review: Excellent salary level.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary review completed.');
END;
/