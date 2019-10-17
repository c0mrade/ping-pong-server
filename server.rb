# server.rb

require 'sinatra'
require 'json'
require 'httparty'

before do
  content_type 'application/json'
  if request.body.size > 0
    request.body.rewind
    @body = JSON.parse request.body.read
  end
end

get '/' do
  'Welcome to PING-POING server! Get back what you requested!'
end

post '/' do
  'Welcome to PING-POING server! Get back what you requested!'
end

HTTParty::Response::CODES_TO_OBJ.keys.each do |code|
  [:post, :get].each do |request_method|
    send(request_method, "/#{code}") do
      status code
      body do
        @body&.to_json || ''
      end
    end
  end
end
