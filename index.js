module.exports = process.env.EXPRESS_COV
  ? require('./lib-cov/redsplit')
  : require('./lib/redsplit');