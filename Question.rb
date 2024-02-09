class Question
   def initialize
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @correct_answer = @num_1 + @num_2
  end

  def generate_question()
    "What does #{@num_1} + #{@num_2} equal?"
  end

  def is_answer_correct?(player_answer)
    @correct_answer == player_answer.to_i
  end
end