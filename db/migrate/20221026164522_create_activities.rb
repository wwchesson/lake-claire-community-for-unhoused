class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :day_of_week
      t.integer :teacher_id
      t.integer :resident_id
      t.string :location

      t.timestamps
    end
  end
end
