#consolidates all logs thru cat

#copy active log to logdir
cp Daily/ari4.log logdir/active.log

#get all logs in logdir
logs=`ls logdir`
echo $logs 

#remove any existing log
rm tmp/consolidated.log

#consolidate logs
for log in $logs
do
cat logdir/$log >> tmp/consolidated.log
done
echo completed
