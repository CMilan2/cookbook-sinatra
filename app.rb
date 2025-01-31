require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry-byebug'

get '/' do
  @lists = ['recipe1', 'recipe2', 'recipe3']
  erb :index
end

get '/about' do
  erb :about
end

get '/team/:username' do
  puts params[:username]
  "The username is #{params[:username]}"
end
