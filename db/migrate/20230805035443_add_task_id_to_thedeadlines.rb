class AddTaskIdToThedeadlines < ActiveRecord::Migration[7.0]
  def change
    add_reference :thedeadlines, :task, null: true, foreign_key: true
  end
end
