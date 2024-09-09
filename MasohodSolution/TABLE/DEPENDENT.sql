CREATE TABLE [dbo].[DEPENDENT]
(
	[Essn] CHAR(9) NOT NULL PRIMARY KEY, 
    [Dependent_name] VARCHAR(15) NOT NULL, 
    [Sex] CHAR NULL, 
    [Bdate] DATE NULL, 
    [Relationship] VARCHAR(8) NULL,
    PRIMARY KEY (Essn, Dependent_name),
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
     constraintt [PK_Dependent_Essn] PRIMARY KEY clustered ([Essn]),
    --constraint [UX_Dependent_Dependent_name] unique nonclustered ([Dependent_name])
    UNIQUE(Essn),
    FOREIGN KEY (Dependent_name) REFERENCES EMPLOYEE (Essn),
);
Go 

create unique nonclustered index [UX_Dependent_name] ON [dba].[Dependent]([Essn]);

Go
create nonclustered index[IX_Dependent_Essn] ON [dba].[Dependent]([Mgr_Essn] ASC)

