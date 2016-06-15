# Description:
#   Bro count
#

module.exports = (robot) ->
    count = 0
    robot.hear /(.*)?(bro(s)?|bor(s)?)(.*)?/i, (msg) ->
        count++

    robot.hear /^bro count$/, (msg) ->
        # account for this time bro was said
        count--
        msg.send "bro(s) or bor(s) has been said #{count} times"
