class UsersController < ApplicationController
  def join_team
  @user = current_user
  @team = Team.find(params[:user][:team_id])

  if @user.teams << @team
    redirect_to teams_path, notice: 'Successfully joined the team.'
  else
    redirect_to teams_path, alert: 'Failed to join the team.'
  end
end
def leave_team
  @user = current_user
  @team = Team.find(params[:team_id])

  if @user.teams.delete(@team)
    redirect_to teams_path, notice: 'Successfully left the team.'
  else
    redirect_to teams_path, alert: 'Failed to leave the team.'
  end
end

end
