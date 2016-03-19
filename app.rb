require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    player1 = Player.new(params[:player_one])
    player2 = Player.new(params[:player_two])
    @game = Game.create(player1,player2)
    redirect to('/play')
  end

  get '/play' do
    @player1_name = @game.players[0].name
    @player2_name = @game.players[1].name
    @player1_hug_points = @game.players[0].hug_points
    @player2_hug_points = @game.players[1].hug_points
    @hugger_name = @game.hugger.name
    @display_winner = @game.display_winner
    @check_if_winner = @game.winner?
    erb(:play)
  end

  get '/attack' do
    @hugger_name = @game.hugger.name
    @huggee_name = @game.huggee.name
    @player1_hug_points = @game.players[0].hug_points
    @player2_hug_points = @game.players[1].hug_points
    @hugger = @game.hugger
    @huggee = @game.huggee
    @hugger.hugs
    @game.swap_turns
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
