module Game_View

  def welcome_message
  end

  def definition
  end

  def ask_for_guess
    puts "\n Guess: \n"
    gets.chomp
  end

  def correct_output(is_correct)
    is_correct ? "Correct!" : "Sorry wrong answer, try again."
  end

  def next_card_message
  end

  def exit_message
    puts "Thanks for Playing!"
  end

end