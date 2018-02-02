#requiring gems 
require 'rubygems'
require 'sinatra'

#landing page, just says hello world
get '/' do 
    "Hello, World!"
end 


get '/about' do 
    "Hey there, this is about me. "

end 

#:name is a key in the params array, which holds all GET and POST variables
get '/hello/:name' do 
    "hello there, #{params[:name].reverse.upcase}"
end 

get '/more/*' do 
    "THANK YOU FOR YOUR #{params[:splat].last.upcase}"
end 

#this references a view file named form.erb
get '/form' do 
    erb :form 
end 

#returns the 'message' input of the submit form from the form.erb view 
post '/form' do
  "You said '#{params[:message]}'"
end

#the rest of this exercise is practice manipulating form inputs

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