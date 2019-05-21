require "singleton"
require_relative "piece.rb"

class Board
  include Singleton

  def initialize
    @rows = Array.new(8){Array.new(8)}
   
    
    (0..1).each do |i|
      (0..7).each do |j|
        @rows[i][j] = Piece.new
      end
    end
    (6..7).each do |i|
      (0..7).each do |j|
        @rows[i][j] = Piece.new
      end
    end

    (2..5).each do |i|
      (0..7).each do |j|
        @rows[i][j] = NullPiece.new
      end
    end
    
  end

  def move_piece(start_pos, end_pos)
    # @row.map_with_index {|piece, idx| @row[idx] }
 
      puts "Enter the position that you want to move the piece from."
      #start_pos = gets.chomp
      
      raise "That's invalid postion" if start_pos.nil?
 
    pos = @rows[start_pos]  
    new_position = @rows[end_pos] 
    @rows[start_pos] = nil
    
    # if valid_pos?
  end
  
  def valid_pos?(pos)

  end



end