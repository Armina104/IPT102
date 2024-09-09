CREATE TABLE [dbo].[PROJECT]
(
	[Pname] VARCHAR(15) NOT NULL PRIMARY KEY, 
    [Pnumber] INT NOT NULL, 
    [Plocation] VARCHAR(15) NULL, 
    [Dnum] INT NOT NULL,
    PRIMARY KEY (Pnumber),
    UNIQUE(Pname),
    FOREIGN KEY(Dnum) REFERENCES DEPARTMENT(Dnumber),
     [constraint] [PK_Project_Pnumber] PRIMARY KEY clustered ([Pnumber]),
    --constraint [UX_Project_Pname] unique nonclustered ([Pname])
     UNIQUE(Pname),
    FOREIGN KEY (Pnumber) REFERENCES EMPLOYEE (pname),
    
);
Go 

create unique nonclustered index [UX_Project_Pname] ON [dba].[Project]([Pname]);

Go
create nonclustered index[IX_Project_Pnumber] ON [dba].[Project]([Pname] ASC)


