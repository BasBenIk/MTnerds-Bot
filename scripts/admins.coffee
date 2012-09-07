# Description:
#   Nothing much here, just managing a list of admins
#
# Commands:
#   hubot admin add <username> - Add a user to the adminlist
#   hubot admin delete <username> - Remove an admin from the list
#   hubot admins - See who are admin
#
# Author:
#   Christian Vermeulen

module.exports = (robot) ->
	robot.brain.on 'loaded', =>
    	robot.brain.data.admins ||= ['seer','BasBenIk','Shell']

	robot.respond /admin add (.*)/i, (msg) ->
		if msg.message.user.name in robot.brain.data.admins
			robot.brain.data.admins.push(msg.match[1])
			msg.send "Ik heb "+msg.match[1]+" toegevoegd aan de admin lijst"
		else
			msg.send "Silly you! Vraag het even aan een ECHTE admin"

	robot.respond /admin delete (.*)/i, (msg) ->
		user = msg.message.user.name
		if user in robot.brain.data.admins
			if msg.match[1] in robot.brain.data.admins
				i = robot.brain.data.admins.indexOf(msg.match[1])
				robot.brain.data.admins.splice(i,1)
				msg.send "Ik heb "+msg.match[1]+" verwijderd de admin lijst."
			else
				msg.send "Gek, "+msg.match[1]+" is helemaal geen admin."
		else
			msg.send "Silly you! Vraag het even aan een ECHTE admin."

	robot.respond /admins/i, (msg) ->
		msg.send robot.brain.data.admins.join("\n")