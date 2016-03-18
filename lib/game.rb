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
end
