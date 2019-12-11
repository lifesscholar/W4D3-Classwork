class Bishop < Piece
    include Slideable

    def symbol
        if color == "white"
            "\u2657"
        else
            "\u265D"
        end
    end

    protected

    def move_dirs
        diagonal_dirs
    end

end