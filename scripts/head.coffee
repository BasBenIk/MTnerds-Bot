# Description:
#   Give the master repo to pick my brain
#
# Commands:
#   hubot brains - Get the repo url for the master branch of my brain
#
# Author:
# 	Christian Vermeulen
# 		info@christianvermeulen.net

module.exports = (robot) ->
  robot.respond /brains/i, (msg) ->
    text = msg.message.text
    msg.send "Please be gentle! You can fork me here: https://github.com/BasBenIk/MTnerds-Bot"