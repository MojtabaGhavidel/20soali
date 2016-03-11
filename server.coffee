Hapi = require 'hapi'
server = new Hapi.Server()
CB = require 'couchbase'
BaseModel = require('odme').CB
db= new require('puffer') {host: '127.0.0.1', name:'20soaliwords'}
random = require("random-js")() # uses the nativeMath engine


port = 3000
host = 'localhost'
server.connection host:host, port:port
server.start (err) ->
	console.log "Server started listening on localhost:3000..." unless err?




server.register require('inert'), (err) -> 

    if (err) 
        throw err


        server.route
  method: 'GET'
  path: '/'
  handler: (request, reply) ->
    reply 'Hello, world!'
    return



    

server.route
    method: 'GET'
    path: '/'
    handler: (request, reply) ->
        reply.file './public/index.html' 


value = random.integer(1, 100)
console.log value



###
  server.route({
        method: 'GET',
        path: '/hello',
        handler: function (request, reply) {
            reply.file('./public/hello.html');
        }
    });
});

###



###

CRUD ADD WORD

####

class Words extends BaseModel
      source: db
   props:
    word: true

words = new Words { word: 'Pasta' }

###
save to couhbase 
###

### comment kardam ke instance durust nakune
words.create(true).then (result) -> console.log result

###




