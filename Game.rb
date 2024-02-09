class Game
  def initialize
    @players = [Player.new("Player1"), Player.new("Player2")]
    # @question = Question.new
    @current_player_index = 0  # Start with the first player
  end

  def start_game
    play_round
  end

  def play_round
    current_player = @players[@current_player_index]

    @question = Question.new

    if @players[0].num_of_lives <= 0 && @players[0].num_of_lives == @players[1].num_of_lives
      end_game(-1)
    elsif current_player.num_of_lives <= 0
      @current_player_index ^= 1
      end_game(@current_player_index)
    else
      game_question = @question.generate_question
      puts "Player #{@current_player_index + 1}: #{game_question}"
      player_answer = current_player.answer_question(game_question)
      check_player_answer(current_player, player_answer)
      next_turn
    end
  end

  def next_turn
    if @current_player_index == 0
      @current_player_index = @current_player_index + 1
    else
      @current_player_index = @current_player_index - 1
    end

    play_round
  end

  def end_game(player_index)
    if player_index == -1
      puts "GAME DRAWN"
    else
    winner_player = @players[player_index]
    puts "Player #{player_index + 1} wins with a score of #{winner_player.num_of_lives}/3"
    puts "----- GAME OVER -----"
    end
    puts "Good bye!"
  end

  def check_player_answer(player, answer)
    if @question.is_answer_correct?(answer)
      puts "Player #{@current_player_index + 1}: YES! You are correct."
    else
      puts "Player #{@current_player_index + 1}: Seriously? No!"
      player.reduce_lives
    end
    display_score
  end

  def display_score()
    puts "P1: #{@players[0].num_of_lives}/3 vs P2: #{@players[1].num_of_lives}/3"
    puts "----- NEW TURN -----"
  end
end