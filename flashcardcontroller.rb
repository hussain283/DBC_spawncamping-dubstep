#include module!

class FlashCardController
  
  def initialize(deck)
    @deck = deck
    @curr_card = deck.pick_random_card
  end

  def run
    welcome
    game_loop
  end


  def welcome
    "Welcome to Ruby Flash Cards. Type 'exit' to exit."
  end

  def get_input
    print "Guess: "
    input = gets.chomp
    if input == "exit"
      puts "Thanks for playing!"
      break
    end
    return input
  end

  def get_random_card
    @curr_card = @deck.pick_random_card
  end

  def display_definition
    puts "Definition"
    puts "#{@curr_card.definition}"
  end

  def check_input
    @curr_card.is_definition_correct?
  end

  def game_loop
    while true
      display_definition
      get_input
      until check_input  
        get_input
      end
      get_random_card
    end
  end
end
