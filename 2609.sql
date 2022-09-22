select categories.name, sum(p.amount) as sum
from categories
inner join products as p
on p.id_categories = categories.id
group by categories.name