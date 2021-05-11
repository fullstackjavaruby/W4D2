require_relative "piece" 
require "colorize"

 class King < Piece
    include Stepable
   def symbol
    "♚".colorize(color)
   end


   def move_diffs
    
   end
 end