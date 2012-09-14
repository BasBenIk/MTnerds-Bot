# Description:
#   Says good morning to everybody!
#
# Commands:
#   -
#
# URLS:
#   -
#
# Author
# 	Christian Vermeulen
# 		info@christianvermeulen.net
#

quotes = [
	"The person who doesn’t scatter the morning dew will not comb gray hairs.",
	"Good Morning! Wake up sunshine, let a smile be your style today! Good morning friends! Wait, what the hell am I doing up this early??",
	"I can tell you that God is alive because I talked to him this morning.",
	"I’d like mornings better if they started later.",
	"Waking up to a new day is a gift, appreciate it and do remember you are loved. Good morning and have a splendid day.",
	"I have learned that it is not what i have in my life but who I have in my life that counts. Good Morning and Have a good day.",
	"May you begin this day and every day with a smile on your face. Good Morning",
	"Did you feel a little warm in the morning? I sent you warm hugs in my thoughts. Good morning and have a wonderful day.",
	"Every morning you have two choices, continue your sleep with dreams or wake up and chase ur dreams. Choice is Yours. GOOD MORNING",
	"Your alarm clock is clearly jealous of your amazing relationship with your bed.",
	"3 steps to have a great morning; open your eyes, take a deep breath and go back to sleep. Good Morning.",
	"Wasn't your bed extra comforatably when you needed to get out of it? Good Morning!",
	"Good beautiful morning! I feel a fabulous day coming on...",
	"Good morning is a contradiction of terms…",
	"The sooner you fall behind the more time you’ll have to catch up. Good Morning!",
	"I’m awake. Coffee: check, Cigarette: check. You may approach now."
]

goodMorning = (msg) ->
	msg.reply msg.random quotes

module.exports = (robot) ->
	robot.brain.on 'loaded', =>
		robot.brain.data.mornings ||= {}

	robot.hear /./i, (msg) ->
		# Set current date / time
		now = new Date
		# check if we know this user
		if(morning = robot.brain.data.mornings[msg.message.user.name])
			#we know the user, so check if we need to say good morning
			if morning.getDate() < now.getDate()
				# say goodmorning and add a day for tommorow
				goodMorning msg
				morning = morning.setDate(morning.getDate()+1)
		else
			# We don't know the person so we add it to the list and say good morning
			last = new Date now.getFullYear(), now.getMonth(), now.getDate(), 7,0,0
			robot.brain.data.mornings[msg.message.user.name] = last
			goodMorning msg

	robot.respond /morning$/i, (msg) ->
		now = new Date
		msg.reply "vandaag is "+now.getDate()+" en je laatste groet was "+robot.brain.data.mornings[msg.message.user.name].getDate()