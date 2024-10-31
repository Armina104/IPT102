CREATE PROCEDURE [dbo].[ReadEmployee]
    @Search CHAR(9)
AS
BEGIN
    SELECT *
    FROM [EMPLOYEE]
    WHERE [Ssn] LIKE @Search;
END
