# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
   WIN_COMBINATIONS.each do |win_combination|
     win_index_1 = win_combination[0]
     win_index_2 = win_combination[1]
     win_index_3 = win_combination[2]
     win_index_4 = win_combination[3]
     win_index_5 = win_combination[4]
     win_index_6 = win_combination[5]
     win_index_7 = win_combination[6]
     win_index_8 = win_combination[7]

     position_1 = board[win_index_1] # value of board at win_index_1
     position_2 = board[win_index_2] # value of board at win_index_2
     position_3 = board[win_index_3] # value of board at win_index_3
     position_4 = board[win_index_4] # value of board at win_index_4
     position_5 = board[win_index_5] # value of board at win_index_5
     position_6 = board[win_index_6] # value of board at win_index_6
     position_7 = board[win_index_7] # value of board at win_index_7
     position_8 = board[win_index_8] # value of board at win_index_8
     if ((position_1 == "X" || position_1 == "O") && position_taken?(board, win_index_1)) ||
        ((position_2 == "X" || position_2 == "O") && position_taken?(board, win_index_2)) ||
        ((position_3 == "X" || position_3 == "O") && position_taken?(board, win_index_3)) ||
        ((position_4 == "X" || position_4 == "O") && position_taken?(board, win_index_4)) ||
        ((position_5 == "X" || position_5 == "O") && position_taken?(board, win_index_5)) ||
        ((position_6 == "X" || position_6 == "O") && position_taken?(board, win_index_6)) ||
        ((position_7 == "X" || position_7 == "O") && position_taken?(board, win_index_7)) ||
        ((position_8 == "X" || position_8 == "O") && position_taken?(board, win_index_8))
       return win_combination
     end
   end
false

end
