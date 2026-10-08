SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.monthly_salary%TYPE := 500000;
    v_result VARCHAR2(20);
BEGIN
    IF v_salary < 500000 THEN
        GOTO low_salary;
    ELSIF v_salary <= 800000 THEN
        GOTO medium_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    v_result := 'LOW';

    GOTO display_result;

    <<medium_salary>>
    v_result := 'MEDIUM';

    GOTO display_result;

    <<high_salary>>
    v_result := 'HIGH';

    <<display_result>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Classification: ' || v_result);
END;
/