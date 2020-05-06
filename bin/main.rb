#!/usr/bin/env ruby
require_relative '../lib/game.rb'
class Main
  def self.welcome
    puts 'Welcome to the tic-tac-toe game'
    puts 'Press 1 to start'
    choice = gets.chomp

    if choice.to_i == 1
      true
    else
      puts 'Incorrect value, Please Try again: '
      sec_choice = gets.chomp
      return true if sec_choice.to_i == 1

      false
    end
  end

  def self.display_board(stuff)
    print "\t|\s#{stuff[1]}\s"
    print "|\s#{stuff[2]}\s"
    puts "|\s#{stuff[3]}\s|"
    puts "\t-------------"
    print "\t|\s#{stuff[4]}\s"
    print "|\s#{stuff[5]}\s"
    puts "|\s#{stuff[6]}\s|"
    puts "\t-------------"
    print "\t|\s#{stuff[7]}\s"
    print "|\s#{stuff[8]}\s"
    puts "|\s#{stuff[9]}\s|"
  end

  def self.enter_position(name, id)
    id.zero? ? 'X' : 'O'

    puts "[#{name}-(#{id})]-Enter position (1-9 ):"

    my_pos = gets.chomp
    my_pos = my_pos.to_i

    # Check position inputed

    if my_pos.to_i.positive? && my_pos.to_i <= 9
      my_pos.to_i
    else
      puts 'inavalid input '
      enter_position(name)
    end
  end

  def self.statuses(status)
<<<<<<< HEAD
    puts "\n#{status}\n"
  end

  def self.enter_name(play)
    puts "#{play} : Enter Name - "
    name = gets.chomp
    player = name.to_s
    # removing whitespaces
    player = player.gsub(/\s+/, '')

    if player.length < 4
      puts 'Name should have at least four characters'
      enter_name(play)
    end
    player
  end
end
=======
    puts status
  end
end

# step 1: User will press 1 to enter the game
Main.welcome
Main.display_board

# Highest number of moves
maximum_moves = 5

# This loop entails step 3 and 4 where after each input
loop do
  # player one enters position where they can play
  position = Main.enter_position('Player_name')
  puts position
  # function to check position
  # The position is checked for everytime in the loop:-
  #  - if it is empty
  # - if it forms winning march

  # Then if no winning, it displays current board
  Main.display_board

  # player two
  position = Main.enter_position('Player_name')
  puts position
  # does checks then displays again if no win
  # checks for true in results
  if game.results # check if true which if true breaks the loop
    Main.display_board(new_game.my_board)
    Main.statuses("#{player1.player_name} has won")
    break
  end

  # checks if all moves have been and with no win has occured thus results to a loss
  Main.statuses('The game is a draw') if maximum_moves == 1

  Main.display_board

  # checks for true in results
  if new_game.results
    Main.display_board(new_game.my_board)
    Main.statuses("#{player2.player_name} has won")
    break
  end

  # shows a draw
  Main.statuses('The game is a draw') if maximum_moves == 1

  break if maximum_moves == 1

  maximum_moves -= 1
end
>>>>>>> development
