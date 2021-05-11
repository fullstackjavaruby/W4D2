require_relative "piece" 
require "colorize"



 class Pawn < Piece

   def symbol
    "♟︎".colorize(color)
   end

   def moves
    forward_steps.concat(side_attacks)
   end

   def at_start_row?
    if pos.first ==  6 || pos.first == 1
      return true
    end
    return false
   end

   def forward_dir
      if color == :white
        return -1
      end
     return  1
   end

   def forward_steps
    step_1 = [pos[0] + foward_dir, pos[1]]
    step_2 = [pos[0] + (foward_dir * 2), pos[1]]
    [step_1, step_2]
   end

   def side_attacks
    step_1 = [pos[0] + foward_dir, pos[1] + 1]
    step_2 = [pos[0] + foward_dir, pos[1] - 1]
    [step_1, step_2]
   end
 end