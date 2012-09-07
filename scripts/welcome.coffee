# Description:
#   Send a welcome message to first time users
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot welcome <message>
#
# Author:
#   Christian Vermeulen
#     info@christianvermeulen.net

module.exports = (robot) ->
  robot.brain.on 'loaded', =>
    robot.brain.data.welcomeUsers ||= []
    robot.brain.data.welcomeMsg ||= "Welkom bij het MT Stage kanaal!"

  robot.respond /welcome (.*)/i, (msg) ->
    if msg.message.user.name in robot.admins
      robot.brain.data.welcomeMsg = msg.match[1]
      robot.brain.data.welcomeUsers = []
      msg.send "I will notify everybody of this new message!"
    else
      msg.send "You are so naughty! Ask one of the admins to change this."

  robot.hear /./i, (msg) ->
    welcomeUsers = robot.brain.data.welcomeUsers
    if msg.message.user.name not in welcomeUsers
      welcomeUsers.push(msg.message.user.name)
      msg.send "Hey "+msg.message.user.name+", "+robot.brain.data.welcomeMsg