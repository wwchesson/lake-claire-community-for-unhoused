class CreateProgressReports < ActiveRecord::Migration[7.0]
  def change
    create_table :progress_reports do |t|
      t.integer :client_id
      t.integer :activity_id
      t.integer :teacher_id
      t.text :comments
      t.integer :progress
      t.boolean :graduate

      t.timestamps
    end
  end
end
