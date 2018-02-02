require 'rubygems'
require 'sinatra'

get '/' do 
    "Hello, World!"
end 

get '/about' do 
    "Hey there, this is about me. "

end 

get '/hello/:name' do 
    "hello there, #{params[:name].reverse.upcase}"
end 

get '/more/*' do 
    "THANK YOU FOR YOUR #{params[:splat].last.upcase}"
end 

get '/form' do 
    erb :form 
end 

post '/form' do
  "You said '#{params[:message]}'"
end

get '/secret' do 
    erb :secret
end 

post '/secret' do 
    "we encrypted the message into '#{params[:secret].reverse}'"
end 

get '/decrypt/:secret' do 
    "Don't worry we decrypted the message: '#{params[:secret].reverse}'"
end 

not_found do
  halt 404, 'page not found'

end