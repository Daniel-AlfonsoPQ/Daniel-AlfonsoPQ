select prod.name, prov.name from providers as prov
inner join products as prod  on prov.id = prod.id_providers
where prov.name = 'Ajax SA'