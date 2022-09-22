select c.name, round((((s.math*2)+(s.specific*3)+(s.project_plan*5))/10),2) as avg
from candidate as c
inner join score as s
on s.candidate_id = c.id
order by avg DESC