class Player

  def initialize(name)
    @name = name
    @num_of_lives = 3
  end

  attr_accessor:name
  attr_reader :num_of_lives
end