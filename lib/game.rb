require_relative 'computer'
require_relative 'player'

class Game

  RULES = {
    rock: {rock: :draw, paper: :loser, scissors: :winner},
    paper: {rock: :winner, paper: :draw, scissors: :loser},
    scissors: {rock: :loser, paper: :winner, scissors: :draw}
  }

  def play (player, computer)
    @winner = RULES[player.weapon][computer.choice]
    if @winner == :draw
      draw
    elsif @winner == :winner
      winner
    else
      loser
    end
  end

  def winner
    "Player wins"
  end

  def loser
    "Computer wins"
  end

  def draw
    "Draw"
  end

end
