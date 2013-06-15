module Game_View

  def welcome_message
    puts "Welcome to Ruby Flash Cards. Type 'exit' to exit. \n"
  end

  def print_definition(definition)
    puts "\nDefinition\n"
    puts definition
  end

  def ask_for_guess
    puts "\nGuess: \n"
    gets.chomp
  end

  def correct_output(is_correct)
    puts is_correct == true ? "\nCorrect!\n" : "Sorry wrong answer, try again.\n"
  end

  def next_card_message
  end

  def exit_message
    puts "\nThanks for Playing!\n"
  end

end
