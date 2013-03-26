
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'sass'
require "zurb-foundation"



get '/' do
  slim :index
end

not_found do
  slim :not_found
end

get '/styles.css' do
  scss :styles
end


get "/css/*.css" do |path|
  content_type "text/css"
  scss :"scss/#{path}"
end
