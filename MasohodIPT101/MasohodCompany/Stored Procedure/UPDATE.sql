CREATE PROCEDURE [dbo].[UpdateEmployee]
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
    UPDATE [EMPLOYEE]
    SET 
        FName = @Fname,
        Minit = @Minit,
        Lname = @Lname,
        Bdate = @Bdate,
        Address = @Address,
        Sex = @Sex,
        Salary = @Salary,
        Super_ssn = @Super_ssn,
        Dno = @Dno
    WHERE 
        Ssn = @Ssn;  -- Assuming you want to update based on SSN
END

