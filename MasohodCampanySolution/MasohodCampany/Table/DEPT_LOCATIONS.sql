CREATE TABLE [dbo].[DEPT_LOCATIONS]
(
	[Dnumber] INT NOT NULL, 
    [Dlocation] VARCHAR(15) NOT NULL

   Constraint [FK_Dept_Locations_Dnumber] foreign key (Dnumber) REFERENCES [dbo].[Department] ([Dnumber]),
   Constraint [PK_Dept_Locations_Dnumber] primary key (Dnumber, Dlocation),
);
GO
    create nonclustered index [IX_Dept_Locations_Dnumber] ON [Dept_Locations] ([Dnumber])

