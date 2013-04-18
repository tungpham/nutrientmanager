class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :preference
      t.string :allergy
      t.integer :user_id

      t.timestamps
    end
  end
end
