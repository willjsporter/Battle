require 'sinatra'
require 'sinatra/base'
require 'shotgun'
require 'rack'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :play
  end
  # post '/playernames' do
  #
  # end

end
