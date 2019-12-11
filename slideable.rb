require_relative 'null_piece'
require "byebug"
module Slideable

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        possible_moves = []
        move_dirs.each do |direction|
            x = direction.first
            y = direction.last
            array = grow_unblocked_moves_in_dir(x, y)
            possible_moves << array.last unless array.empty?   
        end
        possible_moves
    end

    private

    HORIZONTAL_DIRS = 
    [ 
        #LEFT
        [0, -1],
        #RIGHT
        [0, 1],
        #UP
        [-1, 0],
        #DOwN
        [1, 0]
    ]

    DIAGONAL_DIRS = 
    [
        [-1, -1],
        [1, 1],
        [1, -1],
        [-1, 1]
    ]

    def move_dirs #(all possible move directions for this subclass)

    end
    
    def grow_unblocked_moves_in_dir(dx, dy)
        direction = []
        new_pos = [dx + self.pos.first, dy + self.pos.last]
        while self.board.valid_pos?(new_pos)
            if self.board[new_pos].is_a?(Null_Piece)
                direction << new_pos
                new_pos = [dx + new_pos.first, dy + new_pos.last]
                debugger
            elsif self.board[new_pos].color == self.color
                debugger
                break
            else
                direction << new_pos
                break
            end
        end
        direction
    end

end