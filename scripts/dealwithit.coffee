# Description:
#   Display a "deal with it" gif
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   deal with it || dwi - display a "deal with it" gif
#
# Author:
#   brianstanwyck
# Edit
# 	Christian Vermeulen
# 		info@christianvermeulen.net

deal = [
  "http://i.imgur.com/ykDuU.gif",
  "http://i.imgur.com/3PWHn.gif",
  "http://i.imgur.com/sEinL.gif",
  "http://i.imgur.com/zsK7e.gif",
  "http://i.imgur.com/rE2aH.gif",
  "http://i.imgur.com/Wj3Do.gif"
]

module.exports = (robot) ->
  robot.hear /(deal with it|dwi)/i, (msg)->
    msg.send "Yeah! Deal with it!: "+msg.random deal