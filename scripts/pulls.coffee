# Description:
#   Checks for pull requests and notifies BasBenIk and Seer
#
# Commands:
#	hubot pulls - Get the current list of open pull requests
#	hubot pulls clear - reset the already mentioned pulls
#
# Author:
#   Christian Vermeulen
#		info@christianvermeulen.net

checkPulls = (msg, data, github) ->
	github.get "https://api.github.com/repos/BasBenIk/MTnerds-Bot/pulls", (pulls) ->
  		for pull in pulls
  			if pull.number not in data
  				msg.reply "You have a pull request (#"+pull.number+") by "+pull.user.login+" | "+pull.html_url
  				data.push pull.number

module.exports = (robot) ->
  github = require('githubot')(robot)

  robot.brain.on 'loaded', =>
    robot.brain.data.pulls ||= []

  robot.respond /pulls$/i, (msg) ->
  	github.get "https://api.github.com/repos/BasBenIk/MTnerds-Bot/pulls", (pulls) ->
  		for pull in pulls
  			msg.reply "Pull request #"+pull.number+" by "+pull.user.login+" | "+pull.html_url

  robot.hear /(.*)$/i, (msg) ->
  	if msg.message.user.name is 'Seer' or 'BasBenIk' or 'Shell'
  		checkPulls(msg, robot.brain.data.pulls, github)

  robot.respond /pulls clear$/i, (msg) ->
  	if msg.message.user.name is 'Seer' or 'BasBenIk' or 'Shell'
	  	robot.brain.data.pulls = []
	  	msg.reply "I have cleared the list of pulls"