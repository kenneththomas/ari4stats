select user, count(user) as 'total messages'
from log
group by user