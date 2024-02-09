class Player

  attr_accessor:name
  attr_reader :num_of_lives

  def initialize(name)
    @name = name
    @num_of_lives = 3
  end

  def answer_question(question)
    puts question
    player_answer = gets.chomp
    return player_answer
  end

  def reduce_lives()
    if @num_of_lives > 0 
      @num_of_lives -= 1
    end
  end
end