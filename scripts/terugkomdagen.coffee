# Description:
#   Show the days that MT students need to go back to school
#
# Commands:
#   hubot wanneer is de volgende terugkomdag? - get the first upcoming date
#
#
# Author:
# 	Christian Vermeulen
# 		info@christianvermeulen.net

days = [
  {date: "09/20/2012", text: "Donderdag 20 September"},
  {date: "10/11/2012", text: "Donderdag 11 Oktober"},
  {date: "11/15/2012", text: "Donderdag 15 November"},
  {date: "12/13/2012", text: "Donderdag 13 December"},
  {date: "01/31/2013", text: "Donderdag 31 Januari"},
]

module.exports = (robot) ->
  robot.respond /wanneer is de volgende terugkomdag?/i, (msg) ->
    text = msg.message.text
    now = new Date
    now = now.getTime()

    for day in days
      moment = new Date
      moment = moment.setTime(Date.parse(day.date))
      if moment > now
        msg.send day.text
        break
