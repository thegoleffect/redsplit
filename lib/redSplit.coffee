url = require("url")

redSplit = (hoststr, mapping = redisMap) ->
  parsed = url.parse(hoststr)
  if parsed.auth? and parsed.auth.indexOf(":") >= 0
    parsed.authpair = parsed.auth
    parsed.auth = parsed.authpair.split(":").pop()
  return parsed

module.exports = redSplit