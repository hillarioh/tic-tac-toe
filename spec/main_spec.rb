require '../bin/main'
require '../lib/game'

describe "#start game "  do
    
end

describe "#display_board" do
    let (:coordinates){Hash.new{1=>"X",2=>" ",3=>"O",4=>" ",
        5=>" ",6=>"X",7=>" ",8=>"O",9=>" "}}
    it "displays data from a hash" do
        
        expect(display_board(coordinates))    
end

describe  "#enter_position " do
     it "returns position inputed" do
        calculator = Calculator.new
        expect(calculator.multiply(5,2)).to eql(10)
    end
    
end

describe "#statuses" do
    
end