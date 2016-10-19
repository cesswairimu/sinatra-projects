module MySinatra
  class Application 
    def self.call(env)
      new.call(env)
    end

    def call(env)
      headers = {'Content_type' => 'text.html'}
      if env['PATH_INFO'] == '/'
        status, body = 200, hi
      else
        status body = 404, "Sinatra does not know this ditty!"
      end
      headers['Content-length'] = body.length.to_s
      [status,headers,[body]]
    end
  end
end
require 'thin'
Thin::Server.start MySinatra::Application, 4567

