require './player'
require './question'
require './game'

def randomQA
  number1 = (1+ Random.rand(20))
  number2 = (1+ Random.rand(20))
  q = "#{number1} + #{number2} ?"
  a = number1 + number2
  [q,a]
end

player1 = Player.new('Anderson')
player2 = Player.new('Mackenzie')

game = Game.new([player1,player2])

currentPlayer = player1

while game.state == 1 do

  question = Question.new(randomQA)

  puts question.question

  if Integer(gets.chomp) == question.answer
    puts 'Correct!'
    currentPlayer.addPoint
    puts "#{currentPlayer.name} has #{currentPlayer.points} point"
  else
    currentPlayer.loseLife
    puts 'Wrong'
    puts "#{currentPlayer.name} has #{currentPlayer.lives} lives left "
    if player1.lives == 0 || player2.lives == 0
      puts "Game over apparently #{currentPlayer.name} cant do maths good"
    game.endGame
    end
  end
  #Changes players
  if currentPlayer == player1
    currentPlayer = player2
  else
    currentPlayer = player1
  end
end

