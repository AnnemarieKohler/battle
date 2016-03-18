class Player

  HIT_POINTS = 0

  attr_accessor :name, :hit_points, :in_turn

  def initialize(name, hit_points: HIT_POINTS)
    @in_turn = true
    @name = name
    @hit_points = hit_points
  end

  def hugs(opponent)
    @in_turn = !@in_turn
    opponent.in_turn = !opponent.in_turn
    opponent.hit_points += 10
  end
end
