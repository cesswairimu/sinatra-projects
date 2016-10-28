require 'sinatra'
set :title, "My Website"
#specify env dependent options
configure :development, :test do
  enable :admin_access
end

if settings.admin_access?
  get('/admin') {'Welcome here ua honor Admin'}
end

get '/' do
  "<h1>#{   settings.title }</h1>"
end
