class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :type
      t.string :firstname
      t.string :lastname
      t.string :date_of_birth
      t.string :email
      t.string :phone
      t.string :title
      t.text :needs
      t.string :interests
      t.string :stage
      t.string :emer_name
      t.string :emer_phone

      t.timestamps
    end
  end
end
