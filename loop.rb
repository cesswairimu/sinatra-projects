require 'sinatra'
before do
  content_type :txt
end
not_found do
  "Whoops your request was not found!! Check the address again``"
end
get '/home' do
  @users = ["Ryan", "Makak", "Lawrence", "Terrence", "Felix"]
  erb :home
end
__END__
@@home
<html>
<h1> The list of all my users</h1>
<% @users.each do |user| %>
<p> <%= user %></p>
<% end %>
</html>
