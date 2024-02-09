class Game
  def initialize
    @players = [Player.new("Player1"), Player.new("Player2")]
    @question = Question.new
    @current_player_index = 0  # Start with the first player
  end

  def start_game
    play_round
  end

  def play_round
    current_player = @players[@current_player_index]

    if current_player.num_of_lives < 0
      end_game
    else
      game_question = question.generate_question
      puts "Player #{@current_player_index}: #{game_question}"
      player_answer = current_player.answer_question(game_question)
  end

  def next_turn
  end

  def end_game
  end

  def check_player_answer(player, answer)
  end
end