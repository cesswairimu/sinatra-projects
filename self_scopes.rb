require 'sinatra'
outer_self = self

get '/' do
  content_type :txt
  "Outer self #{outer_self}, Inner self: #{self}"
end
