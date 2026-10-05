USE CollegeDB;

DROP PROCEDURE IF EXISTS DisplayStudents;

DELIMITER $$

CREATE PROCEDURE DisplayStudents()
BEGIN

    -- Declare variables

    -- Declare cursor

    -- Declare NOT FOUND handler

    -- Open cursor

    -- Fetch records using a loop

    -- Close cursor

END $$

DELIMITER ;

CALL DisplayStudents();
SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

BEGIN
    FOR student_record IN student_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Student ID: ' || student_record.StudentID ||
            ', Name: ' || student_record.StudentName ||
            ', Department ID: ' || student_record.DepartmentID
        );
    END LOOP;
END;
/
