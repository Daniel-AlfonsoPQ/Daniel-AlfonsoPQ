select lr.name, round((lr.omega * 1.618), 3) as "The N Factor"
from life_registry as lr
inner join dimensions as d
on lr.dimensions_id = d.id
where d.name in ('C875', 'C774') and lr.name LIKE 'Richard%'
order by lr.omega ASC