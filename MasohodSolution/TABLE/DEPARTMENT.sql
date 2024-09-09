CREATE TABLE [dbo].[DEPARTMENT]
(
	[Dname] VARCHAR(15) NOT NULL PRIMARY KEY, 
    [Dnumber] INT NOT NULL, 
    [Mgr_ssn] CHAR(9) NOT NULL, 
    [Mgr_start_date] DATE NULL,
    constraintt [PK_Department_Dnumber] PRIMARY KEY clustered ([Dnumber])
    --constraint [UX_Department_Dname] unique nonclustered ([Dname])
    UNIQUE(Dname),
    FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE (Ssn),
);
Go 

create unique nonclustered index [UX_Deparment_Dname] ON [dba].[Department]([Dname]);

Go
create nonclustered index[IX_Department_Mgr_ssn] ON [dba].[Department]([Mgr_ssn] ASC)


