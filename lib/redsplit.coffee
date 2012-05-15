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