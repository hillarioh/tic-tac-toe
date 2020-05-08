require './bin/main.rb'

def start_game
  new_game = Game.new

  return statuses('You did not press 1') if welcome == false

  new_game.set_players

  # maximum number of moves a player can make
  maximum_moves = 9
end

describe './bin/main.rb' do
  describe Game do
    describe '#initialize' do
      it 'assigns @board to a hash spaces " "' do
        @new_board = Board.new
        expect(new_board.my_board).to eq({
      1 => ' ',
      2 => ' ',
      3 => ' ',
      4 => ' ',
      5 => ' ',
      6 => ' ',
      7 => ' ',
      8 => ' ',
      9 => ' '
    })
      end
    end


    describe '#moves' do
      it 'returns true for a draw' do
        expect(maximum_moves).to eq(9)
      end

    describe '#player id input' do
      it 'returns true for a draw' do
        expect(choice.to_i).to eq(1)
        expect(sec_choice.to_i).to eq(1)
      end

      describe 'moves' do
      it 'checks for valid input' do
      expect(my_pos.to_i).to be(true)
    end

    describe 'Wins' do
      it 'defines wins with has for combinations' do
          current_player_id = new_game.player1.player_id

          expect(vertical).to eql(vertical_check(position, p_id))
          expect(horiz ).to eql(horizontal_check(position, p_id))

      end
    end

  end
end