# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[
  [0,1,2],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [3,4,5],
  [2,4,6],
  [2,5,8],
  [6,7,8]
  ]
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input=input.to_i
  index=input-1
  return index
end

def move(board, index, player)
  if(valid_move?(board,index))
    board[index]=player
    return board
  end
  turn(board)
  #display_board(board)
end

def position_taken?(board, index)
  !((board[index]==" ") || (board[index].to_s.empty?) || (board[index].nil?))
end

def valid_move?(board,index)
  if(index.between?(0,8))
    if( (board[index]==" ") || (board[index].to_s.empty?) || (board[index].nil?))
      return TRUE
    end
  end
  return false
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index=input_to_index(input)
  move(board, index)
  display_board(board)
end

def turn_count(board)
  turn = 0
  board.each{|place| blank?(place) ? nil : turn+=1}
  turn
end

def current_player(board)
  turn_count(board).even? ? "X" : "O"
end