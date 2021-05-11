require_relative "piece" 
require "colorize"

 class Rook < Piece
    include Slideable
   def symbol
    "♜".colorize(color)
   end
 end