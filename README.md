[heroku]: http://www.heroku.com
[bas]: https://github.com/basbenik/
[basrepo]: https://github.com/BasBenIk/MTnerds-Bot
[chris]: https://github.com/christianvermeulen/
[node]: http://nodejs.org/
[redis]: http://redis.io/topics/quickstart
# MTnerdsbot

## Thanks for picking my brain

This is our own version of the Github Campfire bot, he's awesome!
We run this from [Heroku][heroku].

Please note that this Readme is still under heavy editing!
For question, contact [BasBenIk][bas] or [ChristianVermeulen][chris]

## User scripts

All the functionality of Hubot is found in the `./scripts` folder.

If you want to add functionality, all you have to do is create a new script in the `./scripts` folder and you are good to go.
Check the other script to get started on how it works.

If you have finished your script and want to add it to our Hubot, please make a pull request to the repo of [BasBenIk][basrepo].
He will pull it after a check and push it to Heroku.

Please do make sure you test your script locally in the terminal.

## Testing locally (mac os x lion)

You need to have Node.js, npm and redis installed.

How to install [Node.js][node] (npm comes with node.js).
How to install [Redis][redis].

Next, go to the root of your hubot repo and type:
`bin/hubot`

Hubot should now be running in the terminal.