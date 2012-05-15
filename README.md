redSplit
========

An easy way to break redis host strings into objects usable by Redis-powered Node.js modules.

## Example

    var red = require('redsplit');
    var nconf = require('nconf');
    require('nconf-redis');
    
    var redisObj = red.split(process.env.REDIS, 'nconf')
    nconf.use('redis', redisObj)

More examples in the examples/ folder.  Eventually.

## Supported Modules

* connect-redis
* nconf
* node-redis (redis)

To add more, submit a GitHub issue or Pull Request.