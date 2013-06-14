require_relative 'flashcard.rb'

class Deck

  attr_reader :flash_cards,:current_card

  def initialize(file_name)
    @filename = file_name
    @cards = []
    self.load
    @current_card = nil
  end

  def load
    file = File.open(@filename,"r")
    
    data = file.read # usable data
    file.close

    data = data.split("\n")
    data.delete("")
    
    @cards = data.each_slice(2).map {|pair| FlashCard.new(definition: pair[0], answer: pair[1]) }
  end

  def pick_random_card
    @current_card = @cards.sample
  end

  def is_answer_correct?(guess_string)
    @current_card.is_correct?(guess_string) unless @current_card.nil?
  end

end
