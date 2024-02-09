class Player

  def initialize(name)
    @name = name
    @num_of_lives = 3
  end

  attr_accessor:name
  attr_reader :num_of_lives

  def answer_question(question)
    puts question
    player_answer = gets.chomp
  end

  def reduce_lives()
    if @num_of_lives > 0 
      @num_of_lives -= 1
    end
  end
end