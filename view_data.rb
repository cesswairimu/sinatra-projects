require 'sinatra'
get '/user' do
  @u =  "Random user"
  erb :user
end

__END__
@@user
<html>
<h1>
<%= @u %>
, Hello
</h1>
<p>
I am glad u showed up
</p>
</html>

