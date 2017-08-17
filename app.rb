require 'sinatra'
require 'sinatra/base'
require 'shotgun'
require 'rack'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # session[:hp2] = 100
    $player1 = params['player1']
    $player2 = params['player2']
    session[:display] = false
    redirect to('/play')
  end

  get '/play' do
    # @hp1 = 100
    # @hp2 = session[:hp2]
    # @player1 = session[:player1]
    # @player2 = session[:player2]
    @display = session[:display]
    erb :play
  end

  post '/attack' do
    $hp2 -= 20
    session[:display] = true
    redirect to('/play')
  end

  run! if app_file == $0
end
