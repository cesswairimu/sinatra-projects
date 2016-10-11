require 'sinatra'
get '/*' do
  "Hii ni ujinga tu" #This is the route that will be excuted since it is the first sufficient
  #match available in the program
end

get '/specific' do 
  "You will never ever see me" #this will not be excuted tho it makes more sense than the first
end

