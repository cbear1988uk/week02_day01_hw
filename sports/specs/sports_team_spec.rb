
require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def test_team_name
    sports_team = SportsTeam.new("The Rapids", players = ["Bull", "Merrill", "Burbank"], "Hancock", 0)
    assert_equal("The Rapids", sports_team.team_name)
  end

  def test_player_names
    sports_team = SportsTeam.new("The Rapids", players = ["Bull", "Merrill", "Burbank"], "Hancock", 0)
    assert_equal(["Bull", "Merrill", "Burbank"], sports_team.player_names)
  end

  def test_head_coach
    sports_team = SportsTeam.new("The Rapids", players = ["Bull", "Merrill", "Burbank"], "Hancock", 0)
    assert_equal("Hancock", sports_team.head_coach)
  end

  def test_set_head_coach
    sports_team = SportsTeam.new("The Rapids", players = ["Bull", "Merrill", "Burbank"], "Hancock", 0)
    sports_team.set_head_coach("Daniels")
    assert_equal("Daniels", sports_team.head_coach)
  end

  def test_add_player
    sports_team = SportsTeam.new("The Rapids", players = ["Bull", "Merrill", "Burbank"], "Hancock", 0)
    add_player = sports_team.add_new_player("Martin")
    assert_equal("Martin", add_player)
  end

  def test_find_player
    sports_team = SportsTeam.new("The Rapids", players = ["Bull", "Merrill", "Burbank"], "Hancock", 0)
    find_player = sports_team.find_player_name("Merrill")
    assert_equal("Merrill", find_player)
  end

  def test_team_wins
    sports_team = SportsTeam.new("The Rapids", players = ["Bull", "Merrill", "Burbank"], "Hancock")
    sports_team.point_for_win_or_loss
    assert_equal(10, sports_team)
  end



  # def test_team_loss
  #   sports_team = SportsTeam.new("The Rapids", players = ["Bull", "Merrill", "Burbank"], "Hancock")
  #   sports_team.point_for_win_or_loss
  #   assert_equal(-10, sports_team)
  # end













end
