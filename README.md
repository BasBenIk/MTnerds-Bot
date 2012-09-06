# MTnerdsbot


## Deze readme is nog niet af en wordt nog aangepast!

Dit is een versie van GitHub's Campfire bot, hubot. Hij is erg vet!.

Deze versie is speciaal gemaakt om te draaien op [Heroku][heroku].

[heroku]: http://www.heroku.com


## HTTP Listener

Hubot has a HTTP listener which listens on the port specified by the `PORT`
environment variable.

You can specify routes to listen on in your scripts by using the `router`
property on `robot`.

```coffeescript
module.exports = (robot) ->
  robot.router.get "/hubot/version", (req, res) ->
    res.end robot.version
```

There are functions for GET, POST, PUT and DELETE, which all take a route and
callback function that accepts a request and a response.


## hubot-scripts

Neem een kijkje bij de scripts in de `./scripts` folder voor voorbeelden.

Uiteindelijk zullen er natuurlijk functionaliteiten komen die iedereen wilt hebben.
Voeg nieuwe scripts toe die je gaaf lijken of schrijf natuurlijk je eigen script!
Maak vervolgens een pull request zodat ik hem uiteindelijk kan toevoegen aan de werkende bot.

Om uiteindelijk een script helemaal toe voegen nadat je hem in de script folder hebt gezet.

To enable scripts from the hubot-scripts package, add the script name with
extension as a double quoted string to the hubot-scripts.json file in this
repo.


[hubot-scripts]: https://github.com/github/hubot-scripts


