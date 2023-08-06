class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :task_title
      t.text :task_description

      t.timestamps
    end
  end
end
