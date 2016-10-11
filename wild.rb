require 'sinatra'
get '/*' do
  "It was passed in #{params[:splat]}"
end
