CREATE TABLE [dbo].[WORKS_ON]
(
	[Essn] CHAR(9) NOT NULL PRIMARY KEY, 
    [Pno] INT NOT NULL, 
    [Hours] DECIMAL(3, 1) NOT NULL,
    PRIMARY KEY (Essn,Pno),
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
    FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber),
     [constraint] [PK_Works_Essn] PRIMARY KEY clustered ([Essn]),
    --constraint [UX_Works_Pno] unique nonclustered ([Pno])
     UNIQUE(Essn),
    FOREIGN KEY (Pno) REFERENCES EMPLOYEE (Pno),
);
Go 

create unique nonclustered index [UX_Works_Essn] ON [dba].[Works]([Essn]),

Go
create nonclustered index[IX_Works_Pno] ON [dba].[Works]([Pno] ASC)

