#!/usr/bin/env ruby
class Main

     def self.welcome
        puts "Welcome to the game"
        puts "Press 1 to begin"
        choice = gets.chomp
        if choice !=1
          return false
        else
          return true          
        end
    end

    def self.display_board
        puts "This how the board looks like after entering position"
    end

    def self.enter_position
      puts "Enter position that you would like to place"
      my_pos = gets.chomp
      return my_pos
    end

    def self.status_of_position(status)
      puts status
    end

  
end