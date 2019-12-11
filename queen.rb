require_relative 'slideable'
require_relative 'piece'
class Queen < Piece
    include Slideable

    def symbol
        if color.downcase == "white"
            "\u2655"
        else
            "\u265B"
        end
    end

    protected

    def move_dirs
        horizontal_dirs + diagonal_dirs
    end

end