require_relative "piece" 
require "colorize"

 class Queen < Piece

   def symbol
    "♛".colorize(color)
   end
 end