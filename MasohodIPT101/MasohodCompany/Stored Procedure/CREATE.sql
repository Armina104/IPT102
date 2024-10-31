CREATE PROCEDURE [dbo].[CreateEmployee]
    @Fname VARCHAR(15),
    @Minit CHAR(1),
    @Lname VARCHAR(15),
    @Ssn CHAR(9),
    @Bdate NVARCHAR(50),
    @Address VARCHAR(30),
    @Sex CHAR(1),
    @Salary DECIMAL(10,2),
    @Super_ssn CHAR(9),
    @Dno INT
AS
BEGIN
    INSERT INTO [EMPLOYEE] (
        FName,
        Minit,
        Lname,
        Ssn,
        Bdate,
        Address,
        Sex,
        Salary,
        Super_ssn,
        Dno
    )
    VALUES (
        @Fname,
        @Minit,
        @Lname,
        @Ssn,
        @Bdate,
        @Address,
        @Sex,
        @Salary,
        @Super_ssn,
        @Dno
    );
END
