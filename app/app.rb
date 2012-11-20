=begin
 Tattoo Scheduler, very easy scheduler for tattoo artists

 Description
=end

require 'sinatra'

root = File.dirname(__FILE__)

set :public_folder, root + '/../web'
set :views, root + '/views'

get '/' do
  erb :index
end

get '/hello/:first/:last/*' do
   "Hello #{params[:splat]} #{params[:last]}!"
end