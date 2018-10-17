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
