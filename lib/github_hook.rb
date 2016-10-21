require 'sinatra'
require 'time'
class GithubHook < Sinatra::Base
  set(:autopull) { production? }

  post '/update' do
    app.settings.reset!
    load app.settings.app_file

    content_type :txt
    if settings.autopull?
      'git pull 2>&1'
    else
      "ok"
    end
  end
end
