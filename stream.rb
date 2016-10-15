require 'sinatra'
before do
  content_type :txt
end
connections []

get '/consume' do
  stream(:keep_open) do |out|
    #store coonection for later on
    connections << out
    out.callback { connections.delete(out) } #remove connection when closed properly
    out.errback do
      logger.warn 'we just fot a mf connection'
      connections.delete(out)
    end
  end
end
get '/broadcast/:message' do
  connections.each do |out|
    out << "#{Time.now} -> #{params[:message]}" << "/n"

  end
  "Sent #{params[:message]} to all clients"
end
