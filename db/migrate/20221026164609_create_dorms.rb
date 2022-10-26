class CreateDorms < ActiveRecord::Migration[7.0]
  def change
    create_table :dorms do |t|
      t.string :name
      t.integer :floor
      t.integer :bed

      t.timestamps
    end
  end
end
