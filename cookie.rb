require 'sinatra'
get '/' do
  response.set_cookies "foo", "bar"
  "Cookie set. Would you like to <a href=/read> Read it</a>?"
end

get '/read' do 
  "Cookie has a value of #{request.cookies['foo']}"
end

get '/delete' do
  response.delete "foo"
  "Cookie has been deleted"
end
