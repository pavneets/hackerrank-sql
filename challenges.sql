WITH ch_count as(
select h.hacker_id, h.name, count(c.challenge_id) as challenges_count
FROM Hackers h 
JOIN Challenges c 
on h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
ORDER BY challenges_count desc
)
SELECT hacker_id, name, challenges_count
from ch_count
where challenges_count NOT IN (SELECT challenges_count
from ch_count
GROUP by challenges_count
HAVING count(*) > 1
and 
challenges_count < (select max(challenges_count) 
from ch_count))
order by challenges_count DESC, hacker_id