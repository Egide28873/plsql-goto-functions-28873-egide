SET SERVEROUTPUT ON;

DECLARE
    v_employee_id employees.employee_id%TYPE := 101;
    v_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    IF v_salary < 500000 THEN
        GOTO salary_increase;
    ELSIF v_salary <= 800000 THEN
        GOTO salary_maintain;
    ELSE
        GOTO salary_excellent;
    END IF;

    <<salary_increase>>
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Review: Salary increase recommended.');
    GOTO finish;

    <<salary_maintain>>
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Review: Salary is satisfactory.');
    GOTO finish;

    <<salary_excellent>>
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Review: Excellent salary level.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');
END;
/