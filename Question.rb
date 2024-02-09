class Question
   def initialize
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @correct_answer = @num_1 + @num_2
  end

end