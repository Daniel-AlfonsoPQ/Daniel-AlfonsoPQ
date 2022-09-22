select prod.name
from products as prod
inner join providers as prov
on prov.id = prod.id_providers
where (prod.amount between 10 and 20) and (prov.name like 'P%')