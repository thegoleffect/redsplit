exports.split = (hostObj) ->
  hostObj.pass = hostObj.auth.split(":").pop()
  return hostObj

exports.join = (hostObj) ->
  delete hostObj.pass
  return hostObj