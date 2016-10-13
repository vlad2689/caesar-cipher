require 'sinatra'
require 'sinatra/reloader'
require './cipher'

set :port, 3000

get '/' do 
	erb :index, :locals => {:result => parse_input}
end

def parse_input

	user_input = params[:input]

	if (user_input != nil)
		return Cipher.encode(user_input, 10)
	else
		return nil
	end

end

