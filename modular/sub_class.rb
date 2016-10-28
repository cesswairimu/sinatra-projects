require 'sinatra/base'
class MyApp < Sinatra::Base
  get '/' do
    "Hello from my app"
  end
  run!
end
