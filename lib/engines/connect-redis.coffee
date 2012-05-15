exports.split = (hostObj) ->
  hostObj.pass = parsed.authpair.split(":").pop()
  return hostObj

exports.join = (hostObj) ->
  delete hostObj.pass
  return hostObj