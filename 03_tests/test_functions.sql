SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Annual Salary: ' || fn_annual_salary(101)
    );

    DBMS_OUTPUT.PUT_LINE(
        'Years of Service: ' || fn_years_of_service(101)
    );

    DBMS_OUTPUT.PUT_LINE(
        'Tax: ' || fn_calculate_tax(500000)
    );

    DBMS_OUTPUT.PUT_LINE(
        'Department: ' || fn_dept_name(101)
    );
END;
/