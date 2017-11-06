class Sports
  attr_accessor :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  # def name
  #   return @name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def new_player(name)
    @players << name
  end

  def player_check(name)
    @players.include?(name)
  end

  def points_for_win(outcome)
    @points += 1 if outcome == "win"
    return @points
  end

end
