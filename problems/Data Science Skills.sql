with skill_check as (
SELECT *,
case when skill in ('Python','Tableau','PostgreSQL') then 1
     else 0 end as required_skill
     
from candidates
where skill in ('Python','Tableau','PostgreSQL'))

SELECT candidate_id
from skill_check
GROUP by candidate_id
HAVING sum(required_skill)>=3
ORDER by candidate_id
