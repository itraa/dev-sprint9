require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
get '/' do
    "Hello, World!"
end

get '/about' do
    'A little about me'
end

get '/hello/:name' do
    "Hello there, #{params[:name].upcase}."
end

get '/hello/:name/:city' do
    "Hello there, #{params[:name]} from #{params[:city]}."
end

get '/more/*' do
    params[:splat]
end

get '/form' do
    erb :form
end

post '/form' do
    "Your said '#{params[:message]}'"
end

get '/secret' do
    erb :secret
end

post '/secret' do
    params[:secret].reverse
end

get'/decrypt/:secret' do
    params[:secret].reverse
end

not_found do
    halt 404, 'page not found'
end

