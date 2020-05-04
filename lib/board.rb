class Board

    attr_reader :my_board, :results


    def initialize()
        @my_board={
            1=>" ",
            2=>" ",
            3=>" ",
            4=>" ",
            5=>" ",
            6=>" ",
            7=>" ",
            8=>" ",
            9=>" ",
        }
        @results=  results_check(value,player_id)
    end

    def input_position(value,player_id)
        # Checks if position is filled
       if player_id == 0
            self.my_board[value]="X"
            @results = results_check(value,"X")
        else
            self.my_board[value]="O"
            @results = results_check(value,"O")
        end

def input_position(value,player_id)
        # Checks if position is filled
       if self.my_board[value] ==" "
        # replaces id with X and O
        if player_id == 0
            self.my_board[value]="X"
            @results = results_check(value,"X")
        else
            self.my_board[value]="O"
            @results = results_check(value,"O")
        end

       else
        Main.statuses("position filled, choose another")
        new_val = Main.enter_position("Try again")
        input_position(new_val,player_id)
       end
    end

       end

    end

    def results_check(position,p_id)

        vertical = vertical_check(position,p_id)
        horiz = horizontal_check(position,p_id)
        diag = diag_check(position,p_id)

        # check if any check for win is true
        return [vertical,horiz,diag].any?

    end

    # Check for vertical win
    def vertical_check(position,p_id)

        my_array = []

        case position
        when 1..3
            my_array <<  my_board[position]
            my_array <<  my_board[position+3]
            my_array <<  my_board[position+6]
        when 4..6
            my_array <<  my_board[position-3]
            my_array <<  my_board[position]
            my_array <<  my_board[position+3]
        else
            my_array <<  my_board[position-6]
            my_array <<  my_board[position-3]
            my_array <<  my_board[position]
        end

        return my_array.all?{|i| i==p_id}

    end

     # Check for vertical win
    def horizontal_check(position,p_id)

        my_array = []

        if position % 3 == 0
            my_array << my_board[position-2]
            my_array << my_board[position -1]
            my_array << my_board[position]
        elsif position % 3 == 1
            my_array << my_board[position]
            my_array << my_board[position+1]
            my_array << my_board[position+2]
        else
            my_array << my_board[position-1]
            my_array << my_board[position]
            my_array << my_board[position+1]
        end

         return my_array.all?{|i| i==p_id}

    end

     # Check for diagonal win
    def diag_check(position,p_id)

        if position % 2 == 0
            return false
        end

        case position
        when 1,5,9
            my_array = [my_board[1],my_board[5],my_board[9]]
        when 3,5,7
            my_array = [my_board[3],my_board[5],my_board[7]]
        end

        return my_array.all?{|i| i==p_id}

    end

