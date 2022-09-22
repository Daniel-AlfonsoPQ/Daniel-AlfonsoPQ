select e.cpf, e.enome, d.dnome
from departamentos as d 
inner join empregados as e on d.dnumero = e.dnumero 
left join trabalha as t on t.cpf_emp = e.cpf
left join projetos as p on t.pnumero = p.pnumero
where p.pnumero IS NULL
order by e.cpf