import os

users = os.popen('ls userstats/').read()
#print(users)

userlist = users.splitlines()

print('generating stats from these csvs')
print(userlist)

for user in userlist:
  ux3=[]
  ux1 = os.popen('cut -d \",\" -f 26 userstats/' + user +'|grep -v TOTAL').read()
  ux2 = ux1.splitlines()
  #print(ux2)
  for message in ux2:
    conmsg = int(message)
    ux3.append(conmsg)
  print(user + ' ' + str(sum(ux3)))
