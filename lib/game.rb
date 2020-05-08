require_relative 'player.rb'
require_relative 'board.rb'

class Game
  attr_reader :player1, :player2, :new_board

  def initialize
    @player1 = nil
    @player2 = nil
    @new_board = Board.new
  end

  def set_players
    # enter_name methods from main.rb since all files have been required from main.rb file
    @player1 = Player.new(enter_name('Player 1'))
    @player2 = Player.new(enter_name('Player 2'))
  end
end