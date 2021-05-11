class Piece

    attr_reader :pos, :color

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        "#{symbol}"
    end

    def symbol
        raise "No symbol found" 
    end

    def empty?
        false
    end

    def valid_moves

    end

    
    #@rows.flatten(&:empty?) =>
    
    def pos=(val)

    end


    def move_into_check?(end_pos)

    end 
    
end