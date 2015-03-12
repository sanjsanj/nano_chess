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
end