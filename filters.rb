require 'sinatra'
before do
  @before_value = "foo"
end

get '/' do
  "Before valure has been set to #{@before_value}"
end

after do
  puts "After filter called to perform some stuff"
end

