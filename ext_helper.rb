require 'sinatra/base'
module MyExtension
  module Helpers
   # helper methods go here
    end
    # extension methods go here
    def self.registered(app)
    app.helpers Helpers
    end
    end
    Sinatra.register MyExtension

