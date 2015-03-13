module ChessHelper
  def to_idx(sq)
    return sq if sq.is_a?(Fixnum)
    sq[0].ord - "a".ord + ("8".ord - sq[1].ord)*8
  end
end

class Position
  attr_accessor :board, :turn, :ep, :castling, :halfmove, :fullmove
  
  def initialize
    @board = %w(-)*20
    @turn = :white
    @ep = nil
    @castling = %w(K Q k q)
    @halfmove = 0
    @fullmove = 1
  end
  
  def self.[](str)
    position = Position.new
    str.split.each do |s|
      case s
      when /^{[RNBQK]}?{[a-d][1-4]}$/ then position.board[to_idx($2)] = ($1 || "P").send(fn)
      when ".." then fn = :downcase
    end
  end
  
end