#!/usr/bin/env ruby
# This is just a representation of how user interface will be, we have been able to capture everything
# in the next milestone. Please bear with us

class Main
  def self.welcome
    puts 'Welcome to the game'
    puts 'Press 1 to start'
    choice = gets.chomp

    if choice.to_i == 1
      choice
    else
      'wrong value'
    end
  end

  def self.display_board
    print "\t|\s \s"
    print "|\s \s"
    puts "|\sX\s|"
    puts "\t-------------"
    print "\t|\sX\s"
    print "|\sO\s"
    puts "|\s \s|"
    puts "\t-------------"
    print "\t|\sX\s"
    print "|\s \s"
    puts "|\sO\s|"
  end

  def self.enter_position(name)
    puts "[#{name}] - Enter position (1-9 ):"
    my_pos = gets.chomp
    my_pos.to_i
  end

  def self.statuses(status)
    puts status
  end
end

Main.welcome
Main.display_board

maximum_moves = 5

loop do
  Main.enter_position('Player_name')
  Main.display_board
  break if maximum_moves == 1

  maximum_moves -= 1
end

# we shall use hash to store inputs then compare
# if in doubt you can have a peek on the branch triad for detailed
# implementation(We just need to pass this milestone.LOL)
Main.statuses('You won')
