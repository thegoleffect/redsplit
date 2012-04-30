(function() {
  var redSplit, url;

  url = require("url");

  redSplit = function(hoststr, mapping) {
    var parsed;
    if (mapping == null) mapping = redisMap;
    parsed = url.parse(hoststr);
    if ((parsed.auth != null) && parsed.auth.indexOf(":") >= 0) {
      parsed.authpair = parsed.auth;
      parsed.auth = parsed.authpair.split(":").pop();
    }
    return parsed;
  };

  module.exports = redSplit;

}).call(this);
