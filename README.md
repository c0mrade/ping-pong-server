# Ping pong server

Very simple webserver implementation.
Right now it only supports GET and POST request methods.

Server response body, equals request body. Hence the name ;)

Response code is dependent upon the route, for example '/200' will give you a 200 response code.

## Install

bundle install

## Run the server

ruby server.rb

## How to use

Examples are using CURL :

1. `curl --verbose -X POST http://localhost:4567/200 -d '{"a":"b"}'`

   Will return {"a":"b"} with response code 200

2. `curl --verbose -X GET http://localhost:4567/500`

   Will return no body with 500 status
