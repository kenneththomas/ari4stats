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

print('running all time script')
os.system("bash alltime.sh")
