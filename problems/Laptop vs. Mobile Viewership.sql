with count_views as (
SELECT * ,
case when device_type in ('tablet','phone') then 1
     else 0 end as mobile_views,
case when device_type = 'laptop' then 1
     else 0 end as laptop_views
FROM viewership
)

SELECT  sum(laptop_views) as laptop_views ,sum(mobile_views) as mobile_views 
from count_views 
