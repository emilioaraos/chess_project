require_relative("lib/king.rb")
require_relative("lib/Rook.rb")
require_relative("lib/Knight.rb")
require_relative("lib/Bishop.rb")
require_relative("lib/Queen.rb")
require_relative("lib/Pawn.rb")
require_relative("lib/Black_Pawn.rb")
require_relative("lib/Board.rb")




black_king = King.new(5, 8, "black")

white_king = King.new(5, 1, "white")

puts "\nTesting the King"
puts "Good moves"
p white_king.mov?(6, 2)
p white_king.mov?(5, 2)
p white_king.mov?(4, 1)
puts "Bad moves"
p white_king.mov?(7, 2)
p white_king.mov?(1, 5)
p white_king.mov?(1, 1)

puts "\n------------------\n"



white_rook= Rook.new(8,1,"white")


puts "\nTesting the ROOK"

puts "succes"
 p white_rook.mov?(8,4)
 p white_rook.mov?(8,8)
 p white_rook.mov?(7,1)
 p white_rook.mov?(6,1)


 puts "Badmoves"

 puts white_rook.mov?(6,2)
 puts white_rook.mov?(5,3)
 puts white_rook.mov?(1,2)



puts "\n -------------------\n"

white_knight= Knight.new(4,4,"white")


puts "Testing Knight"
puts "Success"

p white_knight.mov?(6,5)
p white_knight.mov?(6,3)
p white_knight.mov?(5,2)
p white_knight.mov?(5,6)
p white_knight.mov?(2,5)
p white_knight.mov?(3,6)

puts "Bad moves"

p white_knight.mov?(7,2)
p white_knight.mov?(6,1)
p white_knight.mov?(4,8)
p white_knight.mov?(6,7)


puts "\n -------------------\n"

white_bishop= Bishop.new(4,4,"white")


puts "Testing Bishop"
puts "Success"

p white_bishop.mov?(8,8)
p white_bishop.mov?(2,2)
p white_bishop.mov?(7,1)
p white_bishop.mov?(1,7)
p white_bishop.mov?(3,5)


puts "Bad moves"

p white_bishop.mov?(7,2)
p white_bishop.mov?(6,1)
p white_bishop.mov?(4,8)
p white_bishop.mov?(6,7)



puts "\n -------------------\n"

white_queen= Queen.new(4,4,"white")


puts "Testing Queen"
puts "Success"

p white_queen.mov?(8,8)
p white_queen.mov?(2,2)
p white_queen.mov?(7,1)
p white_queen.mov?(1,7)
p white_queen.mov?(3,5)
p white_queen.mov?(8,4)
p white_queen.mov?(4,8)
p white_queen.mov?(1,4)
p white_queen.mov?(4,1)
puts "Bad moves"

p white_queen.mov?(3,6)
p white_queen.mov?(7,6)
p white_queen.mov?(8,3)
p white_queen.mov?(1,6)




puts "\n -------------------\n"

white_pawn= WhitePawn.new(2,2)


puts "Testing Pawn"
puts "Success"

p white_pawn.mov?(2,3)
p white_pawn.mov?(2,4)

puts "\n--------------\n"


puts "\n--------------\n"


puts "Testing pawn after first move"

white_pawn2= WhitePawn.new(6,6)

p white_pawn2.mov?(6,7)

puts "Bad moves"

p white_pawn.mov?(2,6)

p white_pawn.mov?(2,7)
p white_pawn.mov?(2,5)
p white_pawn.mov?(2,8)
p white_pawn.mov?(4,4)
p white_pawn.mov?(5,4)
p white_pawn.mov?(6,8)


puts "testing BLACK PAWN first movement"

puts "\n---------------\n"

puts "Success"

black_pawn= BlackPawn.new(2,7)

p black_pawn.mov?(2,6)
p black_pawn.mov?(2,5)

# FALSE!
# p black_pawn.mov?(3,5)
# p black_pawn.mov?(5,6)

         # 0    1  2  3  4  5  6  7  8
pieces=[nil, [],[],[],[],[],[],[],[]]
pieces[8][1]=white_rook
pieces[5][1]=white_king
pieces[6][1]=white_bishop
pieces[7][1]=white_knight
pieces[4][1]=white_queen
puts "Board of pieces"
puts pieces.inspect
puts "test for board movements"
board=Board.new(pieces)
p board.mov?(8,1,8,4)
p board.mov?(5,1,6,2)
p board.mov?(5,5,6,2)
p board.mov?(7,1,3,40)











