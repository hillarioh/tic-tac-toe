require_relative '../lib/board'
# require '../lib/game'

RSpec.describe Board  do

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
         let(:board){Board.new}    
        context "when either (vertical,diagonal,horizontal) has winning combination" do
             it "return true" do
                 board.my_board = { 1 => 'X', 2 => ' ',3 => ' ',4 => 'X',5 => ' ',6 => ' ',7 => 'X',
                    8 => ' ',9 => 'X'}
                expect(board.results_check(4,"X")).to eql(true)        
            end
        end
        context "when none (vertical,diagonal,horizontal) has winning combination" do
             it "return false" do
                 board.my_board = { 1 => ' ', 2 => ' ',3 => ' ',4 => ' ',5 => 'X',6 => ' ',7 => 'X',
                    8 => ' ',9 => 'X'}
                expect(board.results_check(5,"X")).to eql(false)        
            end
        end
       
    end

    describe "#vertical_check" do
        let(:board){Board.new}      
        context 'when it is part of vertical winning combination' do
            it "return true " do 
                board.my_board = { 1 => 'X', 2 => ' ',3 => ' ',4 => 'X',5 => ' ',6 => ' ',7 => 'X',
                    8 => ' ',9 => 'X'}
                expect(board.vertical_check(4,"X")).to eql(true)
            end
        end
        context 'when it is not part of vertical winning combination' do
            it "return false " do 
                board.my_board = { 1 => 'X', 2 => ' ',3 => ' ',4 => 'X',5 => ' ',6 => ' ',7 => 'X',
                    8 => ' ',9 => 'X'}
                expect(board.vertical_check(5,"X")).to eql(false)
            end          
        end
    end

    describe "#horizontal_check" do
         let(:board){Board.new}   
        context "when it is part of horizontal winning combination" do
            it "return true " do 
                board.my_board = { 1 => 'X', 2 => 'X',3 => 'X',4 => ' ',5 => ' ',6 => ' ',7 => ' ',
                8 => ' ',9 => ''}
                expect(board.horizontal_check(1,"X")).to eql(true)
            end
        end
        context "when a player is not part horizontal combinations" do
            it "return false " do 
                board.my_board = { 1 => 'X', 2 => 'X',3 => 'X',4 => ' ',5 => ' ',6 => ' ',7 => ' ',
                8 => ' ',9 => ''}
                expect(board.horizontal_check(4,"X")).to eql(false)
            end
        end
        
    end

    describe "#diagonal_check" do
        let(:board){Board.new}  
        context "when it is part of  diag winning combination(left diag)" do
             it "return true " do 
                board.my_board = { 1 => 'X', 2 => ' ',3 => ' ',4 => ' ',5 => 'X',6 => ' ',7 => ' ',
                8 => ' ',9 => 'X'}
                expect(board.diag_check(5,"X")).to eql(true)
                expect(board.diag_check(3,"X")).to eql(false)
            end            
        end

        context "when it is not part of  diag winning combination(right diag)" do
            it "return false" do 
                board.my_board = { 1 => ' ', 2 => ' ',3 => 'X',4 => ' ',5 => 'X',6 => ' ',7 => 'X',
                8 => ' ',9 => ' '}
                expect(board.diag_check(5,"X")).to eql(true)
                expect(board.diag_check(1,"X")).to eql(false)
            end
        end
       
        
    end
    
end



