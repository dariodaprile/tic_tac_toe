class Player

  attr_reader :player

  def initialize
    @player = "X"
  end

  def next_player
    "0" if @player == "X"
  end

end

