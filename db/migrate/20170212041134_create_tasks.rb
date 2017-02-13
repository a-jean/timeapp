class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :activity
      t.text :description
      t.date :completed
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
