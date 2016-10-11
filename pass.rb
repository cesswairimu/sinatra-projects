require 'sinatra'
before do
  content_type :txt
end
get %r{/(sp|gr)eedy} do
pass if requst.path = ~/\/speedy/
"U got caught in the route"
end
get '/speedy' do
  "You passed me"
end



