# require 'player.rb'
require_relative 'player.rb'
require_relative 'board.rb'

class Game

    def initialize()
    end


    
end

new_game = Board.new()

player1 = Player.new("James")

new_game.input_position(player1.getInput)


