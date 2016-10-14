require 'sinatra'
require 'uuid'
before do
  content_type :txt
  @guid = UUID.new.generate
end
get '/etag' do
  etag @guid
  "This resource has an etag of value of #{@guid}"
end
