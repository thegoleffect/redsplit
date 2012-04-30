url = require("url")
redisMap = {}

redSplit = (hoststr, mapping = redisMap) ->
  parsed = url.parse(hoststr)
  if parsed.auth? and parsed.auth.indexOf(":") >= 0
    parsed.authpair = parsed.auth
    parsed.auth = parsed.authpair.split(":").pop()
  return parsed

redJoin = (hostobj) ->
  if hostobj.authpair?
    hostobj.auth = hostobj.authpair
    delete hostobj.authpair
  
  return url.format(hostobj)

module.exports = exports = redSplit
exports.split = redSplit
exports.join = redJoin
