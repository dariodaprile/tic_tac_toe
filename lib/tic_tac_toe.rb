class TicTacToe
  attr_accessor :values

  X = :play1
  O = :play2

  def initialize(values)
    if values.length == 9
      @values = values
      @play = "X"
    else
      raise
    end
  end

  def valid?
    a = @values.count("X")
    b = @values.count("0")
    c = @values.count(" ")
    true if a - b >= 0 && a + b + c == 9
  end

  def finished?
    @board = @values.split('')

    @winner = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[0, 3, 6],[1, 4, 7],[2, 5, 8],[0, 4, 8],[2, 4, 6]].collect { |index|
      ( @board[index[0]] == @board[index[1]] && @board[index[1]] == @board[index[2]] && @board[index[0]] ) ||nil
    }.compact.first
  end

  def next_move
    @values.count("X") <=> @values.count("0")
  end

  def next_player
    @values.count("X") > @values.count("0") ? :play2  : :play1
  end
end