#calculates the mean messages per day

import os

perday=[]
pdm1 = os.popen('cut -d \",\" -f 26 alltime/messagesperday.csv|grep -v TOTAL').read()
pdm2 = pdm1.splitlines()
for day in pdm2:
  intday = int(day)
  perday.append(intday)

divisor = len(perday)

print(str(divisor) + ' days tracked')

dividend = 0
for day in perday:
 dividend = dividend + day

print(str(dividend) + ' total messages')

#divide to find mean

mean = float(dividend) / float(divisor)

print(str(mean) + ' average messages per day')
