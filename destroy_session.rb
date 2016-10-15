require 'sinatra'
configure do
  enable :sessions
end
before do 
  content_type :txt
end

get '/set' do
  session[:foo] = Time.now
end

get '/value' do
  "The session is set to #{session[:foo]}"
end
get'/logout' do
session.clear
redirect '/fetch'
end
