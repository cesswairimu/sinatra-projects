require 'sinatra'

configure  do
  enable :sessions
end

before do
  content_type :txt
end

get '/set' do
session[:foo] = Time.now
"Session value set"
end

get '/value' do
  "session value is #{session[:foo]}"
end
