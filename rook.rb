class Rook < Piece
    include Slideable

    def symbol
        if color == "white" #be careful here in case condition is not met
            "\u2656"
        else
            "\u265C"
        end
    end

    protected

    def move_dirs
        horizontal_dirs
    end

end