class DeleteColumnsFromActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :resident_id
    remove_column :activities, :location
  end
end
