# Description:
#   Do stupid chuck norris jokes on request
#
# Commands:
#   hubot chuck - Fetch a random joke
#
# Author:
#   Tiemen Waterreus
#     hello@tiemenwaterreus.com

module.exports = (robot) ->
  robot.respond /chuck/i, (msg) ->
    msg
      .http('http://api.icndb.com/jokes/random')
      .headers
        'Accept-Language': 'en-us,en;q=0.5',
        'Accept-Charset': 'utf-8',
        'User-Agent': "Mozilla/5.0 (X11; Linux x86_64; rv:2.0.1) Gecko/20100101 Firefox/4.0.1"
      .get() (err, res, body) ->
        # Response includes non-string keys, so we can't use JSON.parse here.
        json = eval("(#{body})")
        msg.send json.value.joke || 'Could not compute.'