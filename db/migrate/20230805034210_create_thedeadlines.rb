class CreateThedeadlines < ActiveRecord::Migration[7.0]
  def change
    create_table :thedeadlines do |t|
      t.datetime :deadlinetime

      t.timestamps
    end
  end
end
