require_relative "piece.rb"
require "byebug"

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
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
        raise "There is no piece there" if self[start_pos].nil?
        if self[end_pos].nil? && end_pos[0].between?(0, 7) && end_pos[1].between?(0, 7)
            raise "cannot move there"
        end
    end

    def set_board
        8.times do |row|
            8.times do |col|
                if row == 0 || row == 1 || row == 6 || row == 7
                    pos = [row, col]
                    # debugger
                    self[pos] = Piece.new
                end
            end
        end
    end

end
