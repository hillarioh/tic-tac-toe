class Board

    attr_reader :my_board, :results

    def initialize()
        @my_board={
            1=>"X",
            2=>"X",
            3=>"X",
            4=>"X",
            5=>"X",
            6=>"X",
            7=>"X",
            8=>"X",
            9=>"X",
        }
        @results=0
    end

    def input_position(value,player_id)
       if self.my_board[value] =="X"
        self.my_board[value]=player_id
       else
        return "position filled, choose another"
       end

    end


    def results_check
        
    end


    
end