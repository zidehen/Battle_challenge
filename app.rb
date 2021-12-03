require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:Player_1]), Player.new(params[:Player_2]))
    redirect '/play'
  end
  
  get '/attack' do
    $game.attack($game.player2)
    erb :play
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end