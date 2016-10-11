class Game

  attr_accessor :players, :round, :state

  def initialize(players)
    @players = players
    @round = 0
    @state = 1
  end

  def nextRound
    @round = round + 1
  end

  def endGame
    @state = 0
  end

end