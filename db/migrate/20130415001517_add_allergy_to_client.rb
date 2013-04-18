class AddAllergyToClient < ActiveRecord::Migration
  def change
    add_column :clients, :allergy, :string
  end
end
