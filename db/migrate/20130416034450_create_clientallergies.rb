class CreateClientallergies < ActiveRecord::Migration
  def change
    create_table :clientallergies do |t|
      t.integer :client_id
      t.integer :allergy_id

      t.timestamps
    end
  end
end
