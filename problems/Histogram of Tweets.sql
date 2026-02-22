WITH tweets_by_users as (
SELECT user_id , count(*) as num_tweets
from tweets 
where extract(year from tweet_date)='2022'
GROUP by user_id
)

select num_tweets as tweet_bucket ,count(*) 
from tweets_by_users
group by num_tweets
