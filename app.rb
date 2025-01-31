require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry-byebug'
require_relative 'cookbook'
require_relative 'recipe'

cookbook = Cookbook.new('recipes.csv')

get '/' do
  recipes = cookbook.all
  @recipes = recipes
  erb :index
end

get '/recipes/:name' do
  @recipe = cookbook.find(params[:name])
  erb :show
end

get 'recipes/new' do
  erb :new
end

get 'recipes/delete' do
  erb :delete
end
