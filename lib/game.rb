require_relative '../bin/main.rb'
require_relative 'player.rb'
require_relative 'board.rb'

class Game

    def initialize()
    end
     
end

if Main.welcome == false
    return Main.statuses("wrong value")
end

player1 = Player.new("James")
player2 = Player.new("Peter")

new_game = Board.new()


maximum_moves = 5

loop do
    
    Main.display_board(new_game.my_board)

    # Player One
    position = Main.enter_position(player1.player_name)
    puts new_game.input_position(position,player1.player_id)

    # displays current board state after player one input
    Main.display_board(new_game.my_board)

    # Player two
    position = Main.enter_position(player2.player_name)
    puts new_game.input_position(position,player2.player_id)


    break if new_game.results !=0 || maximum_moves==1
    maximum_moves -=1
    
end

# new_game.input_position(player1.getInput)


