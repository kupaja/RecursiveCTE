-- Find Employee reporting structure
use TestDB
go
;with FindEmplReportingStruct AS
(
select empid,mgrid,firstname,lastname,0 as distance from empl where empid=100

union all

select emplalias.empid,emplalias.mgrid,emplalias.firstname,emplalias.lastname, cte.distance +  1 as distance
from FindEmplReportingStruct as cte 
inner join empl as emplalias
on cte.mgrid = emplalias.empid

)
select * from FindEmplReportingStruct;

