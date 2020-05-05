#!/usr/bin/env ruby
require_relative '../lib/game.rb'
class Main

     def self.welcome
        puts "Welcome to the tic-tac-toe game"
        puts "Press 1 to start"
        choice = gets.chomp

        if choice.to_i ==1
          return true
        else
          puts "Incorrect value, Please Try again: "
          sec_choice = gets.chomp
          if sec_choice.to_i == 1
            return true
          end
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

    def self.enter_position(name,id)
       if id ==0
        id = "X"
      else
        id="O"
      end
      puts "[#{name}-(#{id})]-Enter position (1-9 ):"  
     
      my_pos = gets.chomp
      my_pos = my_pos.to_i

      # Check position inputed 
     
        if my_pos.to_i>0 && my_pos.to_i <=9
            return my_pos.to_i
        else
          puts "inavalid input " 
          enter_position(name)
        end


    end

    def self.statuses(status)
     
      puts "\n#{status}\n"
    end

    def self.enter_name(play)
      puts "#{play} : Enter Name - "
      name = gets.chomp
      player = name.to_s
      # removing whitespaces
      player = player.gsub(/\s+/, "")

      if player.length < 4
        puts "Name should have at least four characters"
        enter_name(play)
      end
      return player
    end


  
end
