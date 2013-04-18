class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.string :address
      t.string :city
      t.integer :zipcode
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
