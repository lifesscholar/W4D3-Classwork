require_relative "piece.rb"
require_relative "queen"
require "byebug"

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) {Array.new(8, Null_Piece.instance)}
        self.set_board
    end

    def [](pos)
        row, col = pos[0], pos[1]
        self.rows[row][col]
    end

    def []=(pos, val)
        row, col = pos[0], pos[1]
        self.rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        raise "There is no piece there" if self[start_pos].is_a?(Null_Piece)
        raise "Cannot move there" unless valid_pos?(end_pos) 
        piece = self[start_pos]
        self[end_pos] = piece
        self[start_pos] = Null_Piece.instance
    end

    def set_board
        8.times do |row|
            8.times do |col|
                if row == 0 || row == 1 || row == 6 || row == 7
                    pos = [row, col]
                    self[pos] = Piece.new("white", self, pos)
                end
            end
        end
    end

    def add_piece(piece, pos)

    end

    def valid_pos?(pos)
        pos.all? {|coord| coord.between?(0, 7)}
        # self[pos].is_a?(Null_Piece) && 
    end

    def checkmate(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end

end
