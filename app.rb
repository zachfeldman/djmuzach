require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

require './sass-config'

set :public_folder, 'public'

get '/' do
  haml :home
end

get '/info-form' do
  redirect "https://goo.gl/forms/VKhF6qe0G8cXAuiA3"
end

get '/about' do
  haml :about
end

get '/last-night' do
  erb :'earth-angel-hour'
end

get '/last-night.html' do
  redirect "/last-night"
end
