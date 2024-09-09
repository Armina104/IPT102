CREATE TABLE [dbo].[DEP_LOCATIONS]
(
	[Dnumber] INT NOT NULL PRIMARY KEY, 
    [Dlocation] VARCHAR(15) NOT NULL,
	PRIMARY KEY (Dnumber, Dlocation),
    FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT (Dnumber),
	[constraint] [PK_Dep_Location_Dnumber] PRIMARY KEY clustered ([Dnumber])
    --constraint [UX_Dep_Location_Dname] unique nonclustered ([Dname])
    UNIQUE(Dnumber),
    FOREIGN KEY (Dlocation) REFERENCES EMPLOYEE (Dnumber),
);
Go 

create unique nonclustered index [UX_Dep_Location_Dname] ON [dba].[Dep_Location]([Dname]);

Go
create nonclustered index[IX_Dep_Location_Dnumber] ON [dba].[Department]([Dnumber] ASC)


