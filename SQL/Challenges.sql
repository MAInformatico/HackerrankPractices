select h.hacker_id,h.name,count(c.hacker_id)    
    from Hackers h, Challenges c
    WHERE h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id,h.name
    HAVING count(c.hacker_id) not in (select  distinct count(hacker_id) from Challenges
    WHERE hacker_id <> h.hacker_id group by hacker_id
    having count(hacker_id) < (select max(x.challenge_count) from (select count(c.challenge_id) as challenge_count from Challenges c GROUP BY c.hacker_id) as x ))
    ORDER BY count(c.hacker_id) desc, h.hacker_id;
