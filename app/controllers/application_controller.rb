class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  #set folder for templates  to views, but path is absolute
  set :views, File.expand_path('../../views', __FILE__)
  #do not allow logging when running tests
  configure :production, :development do
    enable :logging
  end

  #For displaying 404 errors
  not_found do
    title 'Not Found'
    erb :not_found
  end
end

