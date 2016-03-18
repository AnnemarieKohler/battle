class Game

  attr_reader :players, :player1, :player2

  def initialize(player1,player2)
    @players = [player1,player2]
    @player1 = player1
    @player2 = player2
    @player2.in_turn = false
  end

  def hugger
    @player1.in_turn ? players[0] : players[1]
  end

  def huggee
    players.select {|player| player != hugger}.first
  end

  def winner?
    player1.hit_points == 100 || player2.hit_points == 100
  end

  def display_winner
    player1.hit_points == 100 ? player1.name : player2.name
  end

end
