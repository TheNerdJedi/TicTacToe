#####
# Which array indices are needed for victory?
# 0, 1, 2 [the top] // 3, 4, 5 [the mid] // 6, 7, 8 [the bottom]
# 0, 3, 6 [the left] // 1, 4, 7 [the midcol] // 2, 5, 8 [the right]
# 0, 4, 8 [tl-br] // 6, 4, 2 [bl-tr] 
#

class Board
    def initialize
        @board = [' ', ' ', ' ',
                  ' ', ' ', ' ',
                  ' ', ' ', ' ']
        @top = [0, 1, 2]
        @mid = [3, 4, 5]
        @bot = [6, 7, 8]
        @left = [0, 3, 6]
        @midcol = [1, 4, 7]
        @right = [2, 5, 8]
        @tl = [0, 4, 8]
        @bl = [6, 4, 2]
        @win_cons = [@top, @mid, @bot, @left, @midcol, @right, @tl, @bl]
    end
    
    def show_board
        to_show = @board.join(" | ")
        puts ""
        puts " " + to_show[0, 10]
        6.times { print "--" }
        puts ""
        puts to_show[11..21]
        6.times { print "--" }
        puts ""
        puts to_show[23..-1]
    end
    
