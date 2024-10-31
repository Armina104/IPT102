CREATE PROCEDURE [dbo].[DeleteEmployee]
    @Ssn CHAR(9)
AS
BEGIN
    DELETE FROM [Employee]
    WHERE Ssn = @Ssn;
END
