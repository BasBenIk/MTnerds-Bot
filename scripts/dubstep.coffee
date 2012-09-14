# Description:
#   Responds to dubstep and creates some dubstep noises at random
#
# Commands:
#   dubstep - Will generate a dubstep response
#
# Author:
#   Tiemen Waterreus
#     hello@tiemenwaterreus.com

module.exports = (robot) ->

  # Almost every note of a dubstep track
  phrases = [
    "WOPWOP",
    "Duh",
    "WAAAH",
    "WEE",
    "WHOO",
    "DDEEEEEWWW",
    "AH-AHAA",
    "BOOP",
    "WHAAP",
    "EWEEEE"
  ]

  # Do some long black haired magic
  runSkrillexGenerator = ->
    # how many tunes do we need? Minimal of 5
    trackLength = 5 + Math.floor(Math.random() * 10)

    # whats the song about?
    trackContents = ""

    # lets do this
    for num in [0..trackLength]
      randomPhrase = Math.floor(Math.random() * phrases.length)
      trackContents += phrases[randomPhrase] + " "

    # Skrillex is done.
    trackContents


  

  # listen for hipsters
  robot.hear /(dubstep|dub|skrillex)/i, (msg) =>
    msg.send 'DUBSTEP! ' + runSkrillexGenerator()



