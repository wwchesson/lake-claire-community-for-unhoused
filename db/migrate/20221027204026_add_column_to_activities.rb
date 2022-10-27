class AddColumnToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :time_of_day, :string
  end
end
