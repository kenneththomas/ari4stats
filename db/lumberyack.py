import discord
import sqlite3
from datetime import datetime
import maricon

client = discord.Client()
db = sqlite3.connect('chatlog.db')
d = db.cursor()
#datetime, user, channel, message

@client.event
async def on_message(message):
    timessquare = str(datetime.now())

    #we r inserting this data into the database
    print(timessquare + ' ' + str(message.author) + ' ' + str(message.channel) + ' ' + message.content)

    #make the rows

    for rowboat in [(timessquare, str(message.author), str(message.channel), message.content)]:
        d.execute('INSERT INTO log VALUES (?,?,?,?)', rowboat)
    db.commit()




@client.event
async def on_ready():
    print('Logged in as')
    print(client.user.name)
    print(client.user.id)
    print('------')

client.run(maricon.key)
