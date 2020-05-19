#!/usr/bin/env ruby
# I have run linter on all files and their no errors i dont understand why stickler says their is an error still
require 'colorize'
require 'colorized_string'
require_relative '../lib/game'
# All methods are laid out here as advised by TSE
# Method to start the game
def start_game
  new_game = Game.new

  return statuses('You did not press 1') if welcome == false

  new_game.set_players

  # maximum number of moves a player can make

  gameon = true

  while gameon
    new_game.new_board.clear_board
    maximum_moves = 9
    loop do
      statuses('Let the game begin') if maximum_moves == 9

      current_player = ''

      # displays current board state
      display_board(new_game.new_board.my_board)

      if maximum_moves.even?
        # signifies first players turn  to play in loop thus ensuring each loops per player
        current_player_id = new_game.player1.player_id
        current_player = new_game.player1.player_name
      else
        current_player_id = new_game.player2.player_id
        current_player = new_game.player2.player_name
      end

      position = enter_position(current_player, current_player_id)
      new_game.new_board.input_position(position, current_player_id)

      # checks for true in results
      if new_game.new_board.results
        display_board(new_game.new_board.my_board)
        statuses("#{current_player} has won")
        break
      end

      statuses('The game is a draw') if maximum_moves == 1

      break if maximum_moves == 1

      maximum_moves -= 1
    end
    statuses('Press N to start a new game or  any key to quit ')
    choice = gets.chomp.downcase
    gameon = choice == 'n'
  end
end

# method for displaying board
def display_board(stuff)
  print "\t|\s#{stuff[1]}\s".colorize(:cyan)
  print "|\s#{stuff[2]}\s".colorize(:cyan)
  puts "|\s#{stuff[3]}\s|".colorize(:cyan)
  puts "\t-------------".colorize(:cyan)
  print "\t|\s#{stuff[4]}\s".colorize(:cyan)
  print "|\s#{stuff[5]}\s".colorize(:cyan)
  puts "|\s#{stuff[6]}\s|".colorize(:cyan)
  puts "\t-------------".colorize(:cyan)
  print "\t|\s#{stuff[7]}\s".colorize(:cyan)
  print "|\s#{stuff[8]}\s".colorize(:cyan)
  puts "|\s#{stuff[9]}\s|".colorize(:cyan)
end

def enter_position(name, id)
  id2 = if id == 1
          'X'
        else
          'O'
        end

  puts "[#{name}-(#{id2})]-Enter position (1-9 ):".colorize(:green)

  my_pos = gets.chomp
  my_pos = my_pos.to_i

  # Check position inputed

  if my_pos.to_i.positive? && my_pos.to_i <= 9
    my_pos.to_i
  else
    puts 'inavalid input '.colorize(:red)
    enter_position(name, id)
  end
end

# method used to display when used in other classes
def statuses(status)
  puts "\n#{status}\n".colorize(:green)
end

def enter_name(play)
  puts "#{play} : Enter Name - ".colorize(:green)
  name = gets.chomp
  player = name.to_s
  # removing whitespaces
  player = player.gsub(/\s+/, '')

  if player.length < 4
    puts 'Name should have at least four characters'.colorize(:red)
    enter_name(play)
  else
    player
  end
end

def welcome
  puts 'Welcome to the tic-tac-toe game'.colorize(:magenta).bold
  puts 'To start the game Press 1 '.colorize(:magenta).bold

  choice = gets.chomp

  if choice.to_i == 1
    puts 'Players enter your names: '.colorize(:green)
    true
  else
    puts 'Incorrect value, Please Try again: '.colorize(:red)
    sec_choice = gets.chomp
    return true if sec_choice.to_i == 1

    false
  end
end

# Execution starts here
start_game
