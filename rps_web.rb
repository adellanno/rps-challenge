require 'sinatra'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPSWeb < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, 'views') }
  set :public_folder, proc { File.join(root, 'public') }

  get '/' do
    erb :name_form
  end

  get '/game' do
    session[:name] = params[:name]
    erb :game
  end

  post '/game' do
    session[:choice] = params[:choice].to_sym
    redirect '/result'
  end

  get '/result' do
    @game = Game.new
    @player = Player.new
    @computer = Computer.new
    @player.choice(session[:choice])
    erb :result
  end

end
