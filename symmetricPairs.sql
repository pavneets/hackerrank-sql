/*
Enter your query here.
*/
select 
    f1.x,f1.y 
from 
    functions as f1 
inner join 
    functions as f2 
on 
    f1.x = f2.y and f1.y = f2.x 
where 
    f1.x <= f1.y
group by 
    f1.x,f1.y
having 
    f1.x < f1.y or count(*) > 1
order by 
    f1.x;
