USERS=`grep \#[0-9] Daily/ari4.log|grep :| cut -d ' ' -f 4|cut -d '#'  -f1|sort -u`

for chatter in $USERS
do
grep $chatter dailystats/*.csv > userstats/$chatter.csv
done
