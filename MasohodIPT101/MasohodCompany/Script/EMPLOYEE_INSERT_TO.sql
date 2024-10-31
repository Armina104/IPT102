use MasohodCampany_1

Go
insert into dbo.Employee
(Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno)
values
(
N'Armin',
N'A',
N'Masohod',
N'124',
N'2002-07-18',
N'Midsayap',
N'F',
N'300.00',
N'911',
N'3'
),(
N'Armin2',
N'A',
N'Masohod',
N'128',
N'2002-07-18',
N'Midsayap',
N'F',
N'300.00',
N'911',
N'3'
),(
N'Armin3',
N'A',
N'Masohod',
N'129',
N'2002-07-18',
N'Midsayap',
N'F',
N'300.00',
N'911',
N'3'
),(
N'Armin4',
N'A',
N'Masohod',
N'130',
N'2002-07-18',
N'Midsayap',
N'F',
N'300.00',
N'911',
N'3'
),(
N'Armin5',
N'A',
N'Masohod',
N'131',
N'2002-07-18',
N'Midsayap',
N'F',
N'300.00',
N'911',
N'3'
)

--All
 --select * from dbo.EMPLOYEE 



  select * from EMPLOYEE
  order by Fname DESC;




 --CONDITION
--select * from EMPLOYEE
--where Fname = 'Arminl5' and Ssn = '131'

--And 1 column lng (T and T )

--Or Cross column (T adn F)






 --PARA SA ANAK NI ANTE FOREIGN Key
 --select 
 --EMPLOYEE.Fname + ' ' + DEPARTMENT.Dname as FullName
 --from 
 --EMPLOYEE JOIN DEPARTMENT
 --on 
 --EMPLOYEE.Ssn = DEPARTMENT.Mgr_Ssn




 --FOR FOREIGN KEY
--select 
--EMPLOYEE.*,
--DEPARTMENT.*
--from
--EMPLOYEE JOIN DEPARTMENT 
--on 
--DEPARTMENT.Mgr_Ssn = EMPLOYEE.Ssn 


--select 
--EMPLOYEE.*,
--DEPARTMENT.*
--from
--EMPLOYEE 
-- RIGHT JOIN DEPARTMENT 
--on 
--DEPARTMENT.Mgr_Ssn = EMPLOYEE.Ssn 

--select 
--EMPLOYEE.*,
--DEPARTMENT.*
--from
--EMPLOYEE 
--LEFT JOIN DEPARTMENT 
--on 
--DEPARTMENT.Mgr_Ssn = EMPLOYEE.Ssn 

--select 
--EMPLOYEE.*,
--DEPARTMENT.*
--from
--EMPLOYEE 
-- INNER JOIN DEPARTMENT 
--on 
--DEPARTMENT.Mgr_Ssn = EMPLOYEE.Ssn 




 --just for  column only then mix it
--select 
--Fname + ' ' + Sex as FullName
--from 
--EMPLOYEE





 --just all delete
 --delete from DEPARTMENT
 --delete from DEPT_LOCATIONS
 --delete from PROJECT
 --delete from DEPENDENT
 --delete from WORKS_ON
 delete from EMPLOYEE

 --just  delete it once
 --Delete from EMPLOYEE
 --where Ssn = 124


 update EMPLOYEE
 set Fname = 'Health Center'
where Ssn = 124