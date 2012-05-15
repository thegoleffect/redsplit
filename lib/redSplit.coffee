url = require("url")

getEngine = (name) ->
  try
    engine = require("./engines/#{name}")
  catch error
    throw "Unsupported engine: #{name}"

split = (hostString, engineName = "connect-redis") ->
  return getEngine(engineName).split(url.parse(hostString))

join = (hostObj, engineName = "connect-redis") ->
  return url.format(getEngine(engineName).join(hostObj))

module.exports = exports = split
exports.split = split
exports.join = join

# Deprecated
# redSplit = (hoststr, mapping = redisMap) ->
#   parsed = url.parse(hoststr)
#   if parsed.auth? and parsed.auth.indexOf(":") >= 0
#     parsed.authpair = parsed.auth
#     parsed.auth = parsed.authpair.split(":").pop()
#   return parsed

# redJoin = (hostobj) ->
#   if hostobj.authpair?
#     hostobj.auth = hostobj.authpair
#     delete hostobj.authpair
  
#   return url.format(hostobj)

# module.exports = exports = redSplit
# exports.split = redSplit
# exports.join = redJoin
