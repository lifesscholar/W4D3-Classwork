class Piece
    attr_reader :color
    attr_accessor :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        self.symbol
    end

    def empty?
        self.is_a?(Null_Piece) # is this what this method is intended to do?
    end

    def valid_moves
        #move into this later
    end

    def pos=(val)
        self.pos = val
    end

    def symbol
        "piece"
    end

    private

    def move_into_check?(end_pos)
        #move into this later
    end

end