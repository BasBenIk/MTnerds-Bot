# Description:
#   Show the days that MT students need to go back to school
#
# Commands:
#   hubot volgende terugkomdag - get the first upcoming date
#   hubot terugkomdagen - get all dates
#
# Notes:
#   TODO: Make the bot pick the right one by date.
#
# Author:
# 	Christian Vermeulen
# 		info@christianvermeulen.net

days = [
  "Donderdag 20 September",
  "Donderdag 11 Oktober",
  "Donderdag 15 November",
  "Donderdag 13 December",
  "Donderdag 31 Januari"
  ]

module.exports = (robot) ->
  robot.respond /terugkomdag, (msg) ->
    text = msg.message.text
      msg.send days[1]

  robot.respond /terugkomdagen, (msg) ->
  	text = msg.message.text
  	  msg.send days.join('\n')