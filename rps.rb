require 'sinatra'
require 'rubygems'

get '/' do
  erb :index
end

post '/' do
  erb :index
end

get '/*' do
  redirect '/'
end

__END__
@@ layout
<!DOCTYPE html>
<html>
<head>
<title> Rock Paper Scissors Game </title>
</head>
<body>
<%= yield %>
</body>
</html>
@@ index
<p> Select a button </p>
<form action= "/" method="post">
<button type= "submit" name="game", value="rock"> Rock</button>
<button type= "submit" name="game", value="paper"> Paper</button>
<button type= "submit"name="game", value="scissors"> Scissors</button>
</form>
<%
  if @env["REQUEST_METHOD"] =='POST'
    @options = { :rock => :scissors, :scissors => :paper, :paper => :rock }
    @comp = [:rock, :paper, :scissors ][rand(3)]
    @html = ''    
@html << "<p>You chose #{params[:game].capitalize} and the computer chose #{@comp.to_s.capitalize}: </p>"
@html << '<p><b>'
if @comp == params[:game].intern
  @html << 'Tie!! '
  elsif @comp == @options[params[:game].intern]
  @html << 'You win :-)'
else
  @html << 'You lose!!'
end
@html << '<p><b>'
end
%>
<% @html %>


