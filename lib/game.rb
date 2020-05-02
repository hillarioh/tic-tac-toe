require_relative '../bin/main.rb'
require_relative 'player.rb'
require_relative 'board.rb'

class Game

    def initialize()
    end
     
end

if Main.welcome
    return puts "fala"
end
    



new_game = Board.new()

player1 = Player.new("James")

puts player1.player_name

# new_game.input_position(player1.getInput)


