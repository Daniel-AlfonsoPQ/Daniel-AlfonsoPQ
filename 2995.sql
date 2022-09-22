select temperature, count(temperature) as number_of_records
from records
group by mark,temperature
order by mark;