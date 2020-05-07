require '../lib/main.rb'

describe start_game do
 describe "#new game" do
   it "creates new players" do
	new_game = Game.new
        new_game.set_players

       expect(game.my_pos.to_i.positive? && game.my_pos.to_i).to eq(9)
  end
 end

describe '#if player wins' do
 if 'display game status'
   (expect new_game.new_board.results).to output ("#{current_player} has won")
  end
 end
end




