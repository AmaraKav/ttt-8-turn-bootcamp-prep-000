def display_board(board)
  puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts ("-----------")
  puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts ("-----------")
  puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def valid_move?(board, input)
  converted = input_to_index(input)
  taken = position_taken(board[converted])
  valid = false
  if (taken == false && converted.between?(1, 9))
    valid = true
    return valid
  end
end

def position_taken?(board, input)
  converted = input_to_index(input)
  taken = true
  if (board[converted] == " X " || board[converted] == " O ")
    taken = true
    return taken
  elsif (board[converted] == "" || board[converted] == " ")
    taken = false
    return taken
  else
    return taken
  end
end

def input_to_index(input)
  index = input.to_i
  index += 1
end
