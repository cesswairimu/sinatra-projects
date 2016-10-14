require 'sinatra'
before do
  content_type :txt
end

get '/cache' do
  expires 3600, :public, :must_revalidate

  "This page was rendered #{ Time.now}"
end
