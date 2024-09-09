CREATE TABLE [dbo].[EMPLOYEE]
(
    [Fname] VARCHAR(15) NULL, 
    [Minit] CHAR NOT NULL, 
    [Lname] VARCHAR(15) NOT NULL, 
    [Ssn] CHAR(9) NULL,
    [Bdate] DATE NULL, 
    [Address] VARCHAR(30) NULL, 
    [Sex] CHAR NULL, 
    [Salary] DECIMAL(10, 2) NULL, 
    [Super_ssn] CHAR(9) NULL, 
    [Dno] INT NOT NULL,
    PRIMARY KEY (Ssn),
      [constraint] [PK_Department_Minit] PRIMARY KEY clustered ([Minit]),
    --constraint [UX_Department_Fname] unique nonclustered ([Fname])
     UNIQUE(Fname),
    FOREIGN KEY (Minit) REFERENCES EMPLOYEE (Ssn),
    
);
Go 

create unique nonclustered index [UX_Employee_Fname] ON [dba].[Employee]([Fname]),

Go
create nonclustered index[IX_Employee_Super_ssn] ON [dba].[Employee]([Super_ssn] ASC)
