class Player

  HUG_POINTS = 0

  attr_accessor :name, :hug_points

  def initialize(name, hug_points: HUG_POINTS)
    @name = name
    @hug_points = hug_points
  end

  def hugs
    @hug_points += 10
  end
  
end
