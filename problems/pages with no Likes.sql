
SELECT p.page_id 
from pages  as p 
left join page_likes as pl 
USING(page_id)
where user_id is null
order by p.page_id ASC
