use MasohodCampany_1

go

insert into dbo.Department
(Dname,Dnumber,Mgr_ssn,Mgr_start_date)
values
(
'AFC',
'0',
'124',
'2024-09-15'

),(
'AFC2',
'9',
'128',
'2024-09-15'

),(
'AFC3',
'8',
'129',
'2024-09-15'

),(
'AFC4',
'10',
'129',
'2024-09-15'

),(
'AFC5',
'11',
'129',
'2024-09-15'

)
select * from dbo.DEPARTMENT

--select 
--DEPARTMENT.*,
--EMPLOYEE.*
--from
--DEPARTMENT JOIN EMPLOYEE
--on
--DEPARTMENT.Mgr_ssn = EMPLOYEE.Ssn

--delete from DEPARTMENT

--delete  from DEPARTMENT