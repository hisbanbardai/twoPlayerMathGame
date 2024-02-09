class Game
  def initialize
    @players = [Player.new("Player1"), Player.new("Player2")]
    @question = Question.new
  end
end