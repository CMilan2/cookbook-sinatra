require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

get "/" do
  "Hello world!, my name is Milan"
  "List"
  "Add"
  "Remove"
end
