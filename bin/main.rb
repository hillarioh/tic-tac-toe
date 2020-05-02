#!/usr/bin/env ruby
class Main

     def self.welcome
        puts "Welcome to the game"
        puts "Press 1 to start"
        choice = gets.chomp

        if choice.to_i ==1
          return true
        else
          return false         
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

    def self.enter_position(name)
      puts "[#{name}]-Enter position (1-9 ):"
      my_pos = gets.chomp
      return my_pos.to_i
    end

    def self.statuses(status)
      puts status
    end

  
end