require "sinatra"
require "sinatra/reloader"
require "slim"
require "coffee-script"

set :public_folder, File.dirname(__FILE__) + '/static'

get "/js/app.js" do
	coffee :app
end

get "/" do 
	slim :app
end
