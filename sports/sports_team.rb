
class SportsTeam

    attr_accessor :team_name, :player_names, :head_coach

  def initialize(team_name, player_names, head_coach, team_points)
    @team_name = team_name
    @player_names = player_names
    @head_coach = head_coach
    @team_points = team_points
  end

  def team_name
    return @team_name
  end

  def player_names
    return @player_names
  end

  def head_coach
    return @head_coach
  end

  def set_head_coach(new_head_coach)
    @head_coach = new_head_coach
  end

  def add_new_player(add_player)
    @player_names = (add_player)
  end

  def find_player_name(find_player)
    @player_names = find_player
  end



  # def point_for_win_or_loss
  #   @team_points -= 10 if true
  #   @team_points -= -10 if false
  # end












end
