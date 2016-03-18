class Game

  attr_reader :players, :player1, :player2, :in_turn

  def initialize(player1,player2)
    @players = [player1,player2]
    @player1 = player1
    @player2 = player2
    @in_turn = @player1
  end

  # def self.start_game
  #    @@start = self.new @player1, @player2
  # end

  def swap_turns
    @in_turn == @player1 ? @in_turn = @player2 : @in_turn = @player1
  end

  def hugger
    @in_turn
  end

  def huggee
    players.select {|player| player != hugger}.first
  end

  def winner?
    player1.hug_points == 100 || player2.hug_points == 100
  end

  def display_winner
    player1.hug_points == 100 ? player1.name : player2.name
  end

end
