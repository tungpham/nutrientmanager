class RemoveAllergyColumnFromClient < ActiveRecord::Migration
  def up
  end
  def change
    remove_column :clients, :allergy
  end
  def down
  end
end
