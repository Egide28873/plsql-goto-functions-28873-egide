SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Employee 101: ' ||
        fn_validate_payroll(101, 500000, 50000)
    );

    DBMS_OUTPUT.PUT_LINE(
        'Employee 102: ' ||
        fn_validate_payroll(102, 700000, 70000)
    );

    DBMS_OUTPUT.PUT_LINE(
        'Invalid salary: ' ||
        fn_validate_payroll(101, 400000, 50000)
    );

    DBMS_OUTPUT.PUT_LINE(
        'Invalid tax: ' ||
        fn_validate_payroll(101, 500000, 600000)
    );

    DBMS_OUTPUT.PUT_LINE(
        'Unknown employee: ' ||
        fn_validate_payroll(999, 500000, 50000)
    );
END;
/