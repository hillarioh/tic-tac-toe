require_relative '../bin/main.rb'
require_relative 'player.rb'
require_relative 'board.rb'

class Game

    def initialize()


end

if Main.welcome == false
    return Main.statuses("You did not press 1")
end

player1 = Player.new(Main.enter_name("Player 1"))
player2 = Player.new(Main.enter_name("Player 2"))

new_game = Board.new()

# maximum number of moves a player can make
maximum_moves = 5

loop do

    if maximum_moves == 5 
        Main.statuses("Let the game begin")
    end

    # displays current board state 
    Main.display_board(new_game.my_board)

    # Player One
    position = Main.enter_position(player1.player_name,player1.player_id)
    new_game.input_position(position,player1.player_id)

    # displays current board state after player one input
    Main.display_board(new_game.my_board)

    # checks for true in results
    if new_game.results
        Main.statuses("#{player1.player_name} has won")
        break
    end

    # Player two
    position = Main.enter_position(player2.player_name,player2.player_id)
    new_game.input_position(position,player2.player_id)

    # checks for true in results
    if new_game.results
        Main.display_board(new_game.my_board)
        Main.statuses("#{player2.player_name} has won")
        break
    end

    if maximum_moves ==1
        Main.statuses("The game is a draw")
    end

    break if  maximum_moves==1
    maximum_moves -=1
    
end




