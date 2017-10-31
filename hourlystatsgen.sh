#Remove Outdated Stats Log
rm stats`date +%Y-%m-%d`.csv

#Top Row of CSV
echo user,0:00,1:00,2:00,3:00,4:00,5:00,6:00,7:00,8:00,9:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00 >> stats`date +%Y-%m-%d`.csv

#Generate Userlist out of anybody who's been logged
USERS=`grep \#[0-9] ari4.log|grep : |cut -d ' ' -f 4|cut -d '#'  -f1|sort -u`

#Generate Temporary Log with no Messages
grep : ari4.log |grep -v Statistics|grep at|grep `date +%Y-%m-%d`|cut -d "#" -f1 > tmpchatlog

for CHATTER in $USERS
do
h0=`grep $CHATTER tmpchatlog|grep -c " 00"`
h1=`grep $CHATTER tmpchatlog|grep -c " 01"`
h2=`grep $CHATTER tmpchatlog|grep -c " 02"`
h3=`grep $CHATTER tmpchatlog|grep -c " 03"`
h4=`grep $CHATTER tmpchatlog|grep -c " 04"`
h5=`grep $CHATTER tmpchatlog|grep -c " 05"`
h6=`grep $CHATTER tmpchatlog|grep -c " 06"`
h7=`grep $CHATTER tmpchatlog|grep -c " 07"`
h8=`grep $CHATTER tmpchatlog|grep -c " 08"`
h9=`grep $CHATTER tmpchatlog|grep -c " 09"`
h10=`grep $CHATTER tmpchatlog|grep -c " 10"`
h11=`grep $CHATTER tmpchatlog|grep -c " 11"`
h12=`grep $CHATTER tmpchatlog|grep -c " 12"`
h13=`grep $CHATTER tmpchatlog|grep -c " 13"`
h14=`grep $CHATTER tmpchatlog|grep -c " 14"`
h15=`grep $CHATTER tmpchatlog|grep -c " 15"`
h16=`grep $CHATTER tmpchatlog|grep -c " 16"`
h17=`grep $CHATTER tmpchatlog|grep -c " 17"`
h18=`grep $CHATTER tmpchatlog|grep -c " 18"`
h19=`grep $CHATTER tmpchatlog|grep -c " 19"`
h20=`grep $CHATTER tmpchatlog|grep -c " 20:"`
h21=`grep $CHATTER tmpchatlog|grep -c " 21"`
h22=`grep $CHATTER tmpchatlog|grep -c " 22"`
h23=`grep $CHATTER tmpchatlog|grep -c " 23"`
echo $CHATTER,$h0,$h1,$h2,$h3,$h4,$h5,$h6,$h7,$h8,$h9,$h10,$h11,$h12,$h13,$h14,$h15,$h16,$h17,$h18,$h19,$h20,$h21,$h22,$h23 >> stats`date +%Y-%m-%d`.csv
done
