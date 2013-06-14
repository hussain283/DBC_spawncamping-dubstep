
class FlashCard
  attr_reader :definition, :answer

  def initialize(args)
    @definition = args[:definition]
    @answer = args[:answer]
  end

  def is_correct?(guess_string)
    guess_string == @answer
  end
end