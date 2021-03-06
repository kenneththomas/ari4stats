#this is a python wrapper script

import os
import time

print('Starting Wrapper Script')

print('running hourly stats gen')
#we have a timer here because this takes a few seconds
start = time.time()
os.system("bash hourlystatsgen.sh")
end = time.time()
print('seconds to run script')
hourlylength = end - start
print(hourlylength)

print('running user stats script')
os.system("bash userstats.sh")

print('running all time scripts')
os.system("bash alltime.sh")
os.system("python3.5 total.py|tee alltime/msgbyuser.txt")

#consolidate logs
os.system("bash scripts/consolidate.sh")

print('running emoji script')
#i have a wrapper running a wrapper. i have no idea why. fix.
os.system("bash emojiwrapper.sh")

border = '**************************'

print(border)
print('main processing complete')
print(border)
time.sleep(1)

print('Amount of users logged: ')
os.system("ls userstats|wc -l")

#find mean
os.system("python3.5 scripts/mean.py")

print('Main log file size: ')
os.system("ls -l Daily/ari4.log --block-size=KB|cut -d \" \" -f5")
