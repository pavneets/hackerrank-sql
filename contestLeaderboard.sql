select h.hacker_id, h.name, SUM(sub.max_score) as sum_score
FROM Hackers h
INNER JOIN (SELECT hacker_id, challenge_id, MAX(score) AS max_score
      FROM Submissions
      GROUP by hacker_id, challenge_id
) sub
on h.hacker_id = sub.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(sub.max_score) > 0
ORDER by sum_score DESC, h.hacker_id ASC