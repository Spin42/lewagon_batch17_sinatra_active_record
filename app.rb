require 'sinatra'
require "sinatra/reloader" if development?
require_relative "config/application.rb"

set :views, proc { File.join(root, "app/views") }

get '/' do
  @beers = Beer.all
  erb :index
end

post '/beers/:id/upvote' do
  @beer = Beer.find(params[:id])
  @beer.upvote
  redirect to "/beers/#{params[:id]}"
end

get '/beers/:id' do
  @beer = Beer.find(params[:id])
  erb :show
end

