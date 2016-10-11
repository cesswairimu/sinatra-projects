require 'sinatra'
get '/:name' do
  "You asked for #{params[:name]} and #{params[:foo]}"
end

