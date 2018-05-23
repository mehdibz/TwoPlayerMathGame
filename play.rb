class Player # Make play and compare players

  def initialize
    @ply1 = 3 #Life of first player
    @ply2 = 3 #Life of second player
    @game_session = false;
  end

  def show_score
    puts "P1: #{@ply1}/3 vs P2: #{@ply2}/3"
  end

  def score
    if((@ply1 > 0) && (@ply2 > 0))
      true
    else
      false
    end
  end

  attr_accessor :ply1
  attr_accessor :ply2
  attr_accessor :game_session
  
end