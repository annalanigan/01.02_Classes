class Sports
  attr_accessor :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
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

end
