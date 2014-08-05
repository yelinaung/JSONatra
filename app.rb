require 'sinatra'
require 'sinatra/reloader'

configure do
  set :public_folder, File.dirname(__FILE__) + '/json'
end

get '/:name' do
  content_type 'application/json'
  if params[:name].nil? then 
    File.readlines(params[:name])
  else
  	status 400
  end
end
