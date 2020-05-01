class Board

    def initialize()
        @my_board1 = ["1","2","1"]
        @my_board2 = ["","1",""]
        @my_board3 = ["1","","1"]

    end

    def input_position(value)
       if position_check(@my_board[0][1]) ==""

        @my_board[0][1]=value
       else
        return "position filled, choose another"
       end

    end

    def position_check(position)


    end

    def results

    end


    
end