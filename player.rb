class Player

  attr_accessor :name, :lives, :points

  def initialize(name)
    @name = name
    @lives = 3
    @points = 0
  end

  def loseLife
    @lives -= 1
  end

  def addPoint
    @points += 1
  end

end