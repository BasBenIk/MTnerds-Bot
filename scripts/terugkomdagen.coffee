# Description:
#   Show the days that MT students need to go back to school
#
# Commands:
#   hubot wanneer moeten we terug naar school? - get the first upcoming date
#   hubot wat zijn de terugkomdagen? - all upcomming dates
#
# Author:
# 	Christian Vermeulen
# 		info@christianvermeulen.net

days = [
  {date: "08/20/2012", text: "Donderdag 20 September"},
  {date: "10/11/2012", text: "Donderdag 11 Oktober"},
  {date: "11/15/2012", text: "Donderdag 15 November"},
  {date: "12/13/2012", text: "Donderdag 13 December"},
  {date: "01/31/2013", text: "Donderdag 31 Januari"},
]

module.exports = (robot) ->
  robot.respond /wanneer moeten we (terug|weer) naar school?/i, (msg) ->
    text = msg.message.text

    # Set the current date
    now = new Date
    now = now.getTime()

    # Go through all knows dates
    for day in days
      # set the date of spcific day
      moment = new Date
      moment = moment.setTime(Date.parse(day.date))

      # Check if the date is ahead of us
      if moment > now
        # #reply this date and break from the loop
        msg.reply day.text
        break

  robot.respond /(wat|wanneer) zijn de terugkomdagen?/i, (msg) ->
    text = msg.message.text

    # Prepare reply string
    reply = "De terugkomdagen zijn: "

    # how many dates do we have
    total   = days.length - 1

    # Set the current date
    now = new Date
    now = now.getTime()

    for day in days
      # get the index of current day
      current = days.indexOf(day)

      # set this day's moment
      moment = new Date
      moment = moment.setTime(Date.parse(day.date))

      if moment > now
        # Choose how to append the day to the string
        if current isnt total
          reply = reply+day.text+", "
        else
          cut = reply.length - 2
          reply = reply.substr(0,cut)
          reply = reply+" en "+day.text

    msg.reply reply