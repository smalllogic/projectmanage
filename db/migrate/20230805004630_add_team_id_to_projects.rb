class AddTeamIdToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :team, null: false, foreign_key: true
  end
end
