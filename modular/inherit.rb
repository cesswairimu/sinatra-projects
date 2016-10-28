require 'sinatra/base'
class GeneralApp < Sinatra::Base
  get '/about' do
    "This the general app mama yao"
  end
end

class CustomApp < GeneralApp
  get '/about' do
    "This is the custom app not mama yao!!"
  end
end

GeneralApp.get '/' do
  "<a href='/about'>more infos</a>"
end

CustomApp.run!
