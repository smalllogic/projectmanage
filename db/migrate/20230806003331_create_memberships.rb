class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.belongs_to :user
           t.belongs_to :team
      t.timestamps
    end
  end
end
