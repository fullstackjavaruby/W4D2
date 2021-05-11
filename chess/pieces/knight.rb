require_relative "piece" 
require "colorize"

 class Knight < Piece

   def symbol
    "♞".colorize(color)
   end
 end