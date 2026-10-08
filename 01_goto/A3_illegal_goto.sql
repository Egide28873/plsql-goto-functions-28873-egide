SET SERVEROUTPUT ON;

-- Illegal GOTO
BEGIN
    GOTO inside_block;

    BEGIN
        <<inside_block>>
        DBMS_OUTPUT.PUT_LINE('Inside block');
    END;
END;
/

-- Corrected GOTO
BEGIN
    GOTO check_salary;

    DBMS_OUTPUT.PUT_LINE('This statement is skipped.');

    <<check_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary review started.');
END;
/