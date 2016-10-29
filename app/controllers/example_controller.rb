class ExampleController < ApplicationController
  get '/example' do
    title "Example Page"
    erb :example
  end
end
