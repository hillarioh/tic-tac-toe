class Board
  attr_reader  :results
  attr_accessor :my_board

  def initialize()
    @my_board = {
      1 => ' ',
      2 => ' ',
      3 => ' ',
      4 => ' ',
      5 => ' ',
      6 => ' ',
      7 => ' ',
      8 => ' ',
      9 => ' '
    }
    @results = false
  end

  def input_position(value, player_id)
    # Checks if position is filled
    som = true
    if my_board[value] == ' '
      # replaces id with X and O
      if player_id == 1
        my_board[value] = 'X'
        @results = results_check(value, 'X')
      else
        my_board[value] = 'O'
        @results = results_check(value, 'O')
      end

    else
      som = false
      statuses('position filled, choose another')
      new_val = enter_position('Try again', player_id)
      input_position(new_val, player_id)
    end
    som
  end

  def results_check(position, p_id)
    vertical = vertical_check(position, p_id)
    horiz = horizontal_check(position, p_id)
    diag = diag_check(position, p_id)

    # check if any check for win is true
    [vertical, horiz, diag].any?
  end

  # Check for vertical win
  def vertical_check(position, p_id)
    my_array = []

    case position
    when 1..3
      my_array << my_board[position]
      my_array << my_board[position + 3]
      my_array << my_board[position + 6]
    when 4..6
      my_array << my_board[position - 3]
      my_array << my_board[position]
      my_array << my_board[position + 3]
    else
      my_array << my_board[position - 6]
      my_array << my_board[position - 3]
      my_array << my_board[position]
    end

    my_array.all? { |i| i == p_id }
  end

  # Check for vertical win
  def horizontal_check(position, p_id)
    my_array = []

    if (position % 3).zero?
      my_array << my_board[position - 2]
      my_array << my_board[position - 1]
      my_array << my_board[position]
    elsif position % 3 == 1
      my_array << my_board[position]
      my_array << my_board[position + 1]
      my_array << my_board[position + 2]
    else
      my_array << my_board[position - 1]
      my_array << my_board[position]
      my_array << my_board[position + 1]
    end

    my_array.all? { |i| i == p_id }
  end

  # Check for diagonal win
  def diag_check(position, p_id)
    case position
    when 1, 9
      my_array = [my_board[1], my_board[5], my_board[9]]
      return my_array.all? { |i| i == p_id }
    when 3, 7
      my_array = [my_board[3], my_board[5], my_board[7]]
      return my_array.all? { |i| i == p_id }
    when 5
      left_dig = [my_board[1], my_board[5], my_board[9]]
      ryt_dig = [my_board[3], my_board[5], my_board[7]]

      return true if (left_dig.all? { |i| i == p_id }) || (ryt_dig.all? { |i| i == p_id })

    else
      return false
    end

    false
  end
end