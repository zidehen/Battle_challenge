class Game
  attr_reader :player1, :player2, :current_player
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player2
  end

  def attack(player)
    player.reduce_points
    switch_turns
  end

  def switch_turns 
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end
    
end
