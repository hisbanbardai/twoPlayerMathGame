class Game
  def initialize
    @players = [Player.new("Player1"), Player.new("Player2")]
    @question = Question.new
  end

  def start_game
  end

  def play_round
  end

  def next_turn
  end

  def end_game
  end
end