var assert = require("assert");
var should = require("should");

var redSplit = require("../lib/redsplit");



describe("#redSplit", function(){
  // Known Conditions
  var known_valid_host_string = "protocol://username:auth@hostname:6379/pathname"
  var known_valid_host_object = {
    protocol: 'protocol:',
    slashes: true,
    auth: 'username:auth',
    pass: "auth",
    host: 'hostname:6379',
    port: '6379',
    hostname: 'hostname',
    href: 'protocol://username:auth@hostname:6379/pathname',
    pathname: '/pathname',
    path: '/pathname'
  }
  
  it("should be defined and be a function", function(done){
    should.exist(redSplit)
    redSplit.should.be.a("function");
    done();
  })
  
  it("should be equivalent to redSplit.split", function(done){
    redSplit.should.equal(redSplit.split);
    done();
  })
  
  describe("#split", function(){
    it("should work for known valid host string", function(done){
      var hostobj = redSplit.split(known_valid_host_string);
      assert.deepEqual(hostobj, known_valid_host_object);
      done();
    })
  })
  
  describe("#join", function(){
    it("should work for known valid host string", function(done){
      var hoststr = redSplit.join(known_valid_host_object);
      hoststr.should.equal(known_valid_host_string);
      done();
    })
  })
})



