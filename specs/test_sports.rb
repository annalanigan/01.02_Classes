require 'minitest/autorun'
require 'minitest/rg'
require_relative "../sports.rb"

class TestSportsTeam < MiniTest::Test

  def test_team_name
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    assert_equal("Winners", sports_team.name)
  end

  def test_players
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    assert_equal(["Bob", "Annie", "Caleb", "Florence"], sports_team.players)
  end

  def test_coach
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    assert_equal("Big Bill", sports_team.coach)
  end

  def test_set_coach
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    sports_team.coach = "Big Barbara"
    assert_equal("Big Barbara", sports_team.coach)
  end

  def test_new_player
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    result = sports_team.new_player("Paulo")
    assert_equal(["Bob", "Annie", "Caleb", "Florence", "Paulo"], result)
  end

  def test_player_check__true
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    result = sports_team.player_check("Annie")
    assert_equal(true, result)
  end

  def test_player_check__false
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    result = sports_team.player_check("Sid")
    assert_equal(false, result)
  end

  def test_points_for_win__win
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    result = sports_team.points_for_win("win")
    assert_equal(1, result)
  end

  def test_points_for_win__lose
    sports_team = SportsTeam.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    result = sports_team.points_for_win("lose")
    assert_equal(0, result)
  end

end
