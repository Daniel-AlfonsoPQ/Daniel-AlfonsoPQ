select prod.id, prod.name
from products as prod
inner join categories as c
on c.id = prod.id_categories
where c.name like 'super%'