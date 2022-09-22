select prod.name, cat.name
from products as prod
inner join categories as cat
on prod.id_categories = cat.id
where (prod.amount > 100) and prod.id_categories IN(1,2,3,5,9)