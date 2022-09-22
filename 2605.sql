select p.name, prov.name
from products as p
inner join providers as prov
on p.id_providers = prov.id
inner join categories as c
on c.id = p.id_categories
where p.id_categories = 6