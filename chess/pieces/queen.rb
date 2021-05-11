require_relative "piece" 
require "colorize"

 class Queen < Piece
    include Slideable
   def symbol
    "♛".colorize(color)
   end
 end