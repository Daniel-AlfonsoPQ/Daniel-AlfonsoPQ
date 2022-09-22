select p.year, sender.name as sender, receiver.name as receiver
from packages as p
inner join users as sender
on p.id_user_sender = sender.id
inner join users as receiver
on p.id_user_receiver = receiver.id
where (p.color = 'blue' or p.year = '2015') 
and sender.address != 'Taiwan' and receiver.address != 'Taiwan'
order by p.year DESC, p.id_package desc;