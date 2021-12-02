require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @Player_1 = params[:Player_1]
    @Player_2 = params[:Player_2]
    erb :play
  end
  
  run! if app_file == $0
end