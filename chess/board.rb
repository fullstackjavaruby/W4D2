class Board

    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
        
    end

    def[](pos)
        row, col = pos
        @rows[row][col]
    end

    def[]=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].nil?
            raise "no piece at this position"
        elsif !self[end_pos].nil?
            raise "position is not empty"
        else
            self[end_pos] = self[start_pos]
            self[start_pos] = nil
        end
    end
end


