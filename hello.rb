def game()
  random_number = rand(1..10)
  guess = 1
  while TRUE
    print "Guess a number : "
    guessed_number = gets.chomp().to_i
    if guessed_number > random_number
      puts "You've guessed high . Please enter a lower number "
      guess += 1
    elsif guessed_number < random_number
      puts "You've guessed low . Please enter a larger number "
      guess += 1

    else
      puts "You've won. Congratulations and you've guessed in #{guess} times. "
      break
    end
  end
end
game()

def play_again()
  while TRUE
    puts " WANT TO PLAY AGAIN ? "
    puts " press 1 to play again and 2 to exit the game "
    choice = gets.chomp().to_i
    if choice == 1
      game()
    elsif choice != 2
      puts " You've given wrong input. Press 1 to play again and 2 to exit.  "
      play_again()
    else
      break
    end
  end
end
play_again()
