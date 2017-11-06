require 'minitest/autorun'
require 'minitest/rg'
require_relative "../sports.rb"

class TestSports < MiniTest::Test

  def test_team_name
    sports_team = Sports.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    assert_equal("Winners", sports_team.name)
  end

  def test_players
    sports_team = Sports.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    assert_equal(["Bob", "Annie", "Caleb", "Florence"], sports_team.players)
  end

  def test_coach
    sports_team = Sports.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    assert_equal("Big Bill", sports_team.coach)
  end

  def test_set_coach
    sports_team = Sports.new("Winners", ["Bob", "Annie", "Caleb", "Florence"], "Big Bill")
    sports_team.coach = "Bigger Barbara"
    assert_equal("Bigger Barbara", sports_team.coach)
  end

end
