select d.name, 
round(sum((att.hours * 150.0) + (((att.hours * 150.0) * ws.bonus) / 100.0)), 1) as salary
from doctors as d
inner join attendances as att on att.id_doctor = d.id
inner join work_shifts as ws on ws.id = att.id_work_shift
group by d.id
order by salary DESC