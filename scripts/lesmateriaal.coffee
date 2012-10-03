# Description:
#   Show the days that MT students need to go back to school
#
# Commands:
#   hubot lesmateriaal - get links to possible locations for course metarial
#
# Author:
#  Christian Vermeulen
#   info@christianvermeulen.net

module.exports = (robot) ->
  robot.respond /lesmateriaal/i, (msg) ->
    msg.send "Dit zijn de mogelijke locaties:"
    msg.send "Confluence: http://confluence.cmi-hro.nl/dashboard.action"
    msg.send "Natschool: http://natschool.hr.nl"
    msg.send "CMI Campus: http://cmi-campus.nl"
    msg.send "HINT: http://hint.hr.nl"