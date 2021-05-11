require_relative "piece" 
require "colorize"

 class Bishop < Piece

   def symbol
    "♝".colorize(color)
   end
 end

