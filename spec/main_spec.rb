require_relative '../lib/board'
# require '../lib/game'

describe Board  do

    describe "#input_position" do
        it "returns win state input for player 1" do
            board = Board.new
            expect(board.input_position(1,0)).to eql(board.results) 
        end
        it "returns win state input for player 2" do
            board = Board.new
            expect(board.input_position(5,1)).to eql(board.results) 
        end
    end

    describe "#results_check" do
        it "return false if no winning combination" do
            board = Board.new
            expect(board.results_check(5,"X")).to eql(false)        
        end
    end

    describe "#vertical_check" do
        it "return false unless it is part of vertical winning combination" do 
            board = Board.new
            board.my_board = { 1 => 'X', 2 => ' ',3 => ' ',4 => 'X',5 => ' ',6 => ' ',7 => 'X',
                8 => ' ',9 => 'X'}
            expect(board.vertical_check(4,"X")).to eql(true)
        end
    end

    describe "#horizontal_check" do
        it "return false unless it is part of vertical winning combination" do 
            board = Board.new
            board.my_board = { 1 => 'X', 2 => 'X',3 => 'X',4 => ' ',5 => ' ',6 => ' ',7 => ' ',
                8 => ' ',9 => ''}
            expect(board.horizontal_check(1,"X")).to eql(true)
        end
        it "return false as player has no O horizontal combinations" do 
            board = Board.new
            board.my_board = { 1 => 'X', 2 => 'X',3 => 'X',4 => ' ',5 => ' ',6 => ' ',7 => ' ',
                8 => ' ',9 => ''}
            expect(board.horizontal_check(4,"O")).to eql(false)
        end
    end

    describe "#diagonal_check" do
        it "return false unless it is part of left diag winning combination" do 
            board = Board.new
            board.my_board = { 1 => 'X', 2 => ' ',3 => ' ',4 => ' ',5 => 'X',6 => ' ',7 => ' ',
                8 => ' ',9 => 'X'}
            expect(board.diag_check(5,"X")).to eql(true)
        end
        it "return false unless it is part of  right diag winning combination" do 
            board = Board.new
            board.my_board = { 1 => ' ', 2 => ' ',3 => 'X',4 => ' ',5 => 'X',6 => ' ',7 => 'X',
                8 => ' ',9 => ' '}
            expect(board.diag_check(5,"X")).to eql(true)
        end
    end
    
end



