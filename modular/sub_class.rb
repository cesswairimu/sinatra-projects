require 'sinatra/base'
class MyApp < Sinatra::Base
  get '/' do
    "Hello from my app"
  end
  run!
  # $0 is the executed file
  # __FILE__IS the current file
  run! if __FILE__ == $0
end

