SELECT date(datetime),count(date(datetime)) from log
group by date(datetime)