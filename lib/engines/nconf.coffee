exports.split = (hostObj) ->
  hostObj.authpair = hostObj.auth
  hostObj.auth = parsed.authpair.split(":").pop()
  return hostObj

exports.join = (hostObj) ->
  hostObj.auth = hostObj.authpair
  delete hostObj.authpair
  return hostObj