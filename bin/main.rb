#!/usr/bin/env ruby
class Main

     def self.welcome
        puts "Welcome to the game"
        puts "Press 1 to start"
        choice = gets.chomp

        if choice.to_i ==1
          return choice
        else
          return "wrong value"       
        end
    end

    def self.display_board
        print "\t|\s#{X}\s"
        print "|\s#{X}\s"
        puts "|\s#{X}\s|"
        puts "\t-------------"
        print "\t|\s#{X}\s"
        print "|\s#{X}\s"
        puts "|\s#{X}\s|"
        puts "\t-------------"
        print "\t|\s#{X}\s"
        print "|\s#{X}\s"
        puts "|\s#{X}\s|"
        
    end

    def self.enter_position(name)
      puts "[#{name}]-Enter position (1-9 ):"
      my_pos = gets.chomp
      return my_pos.to_i
    end

    def self.statuses(status)
      puts status
    end

  
end

Main.welcome
Main.display_board
