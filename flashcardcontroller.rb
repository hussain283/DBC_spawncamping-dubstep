require_relative 'flashcard_view.rb'
require_relative 'deck.rb'

class FlashCardController
  include Game_View

  def initialize(file_name)
    @deck = Deck.new(file_name)
  end

  def run
    self.welcome_message
    self.game_loop
  end

  def game_loop
    while true
      @deck.pick_random_card
      self.print_definition(@deck.current_card.definition)
      guess_string = ''
      until @deck.is_answer_correct?(guess_string)  
        guess_string = self.ask_for_guess
        break if guess_string == 'exit'
        self.correct_output(@deck.is_answer_correct?(guess_string))
      end
      break if guess_string == 'exit'
    end
  end
end


new_game = FlashCardController.new('flashcard_samples.txt')
new_game.run
