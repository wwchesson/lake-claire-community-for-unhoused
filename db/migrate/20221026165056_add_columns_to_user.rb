class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :dorm_id, :integer
    add_column :users, :manager_id, :integer
  end
end
