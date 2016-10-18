require 'sinatra'
before do
  content_type :txt
end

get '/har-har' do
  stream do |out|
    out << "Wonna hear a joke about a lumberjerk?\n"
 sleep 1.5
 out << "Screwface is also funny\n"
 sleep 2.5

 out << "Cess you super awesome "
 sleep 2.0
 out "Malach sucks!!!!!!!!"
  end
end

