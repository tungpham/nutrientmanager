class AddNutritionistIdColumnToClient < ActiveRecord::Migration
  def change
    add_column :clients, :nutritionist_id, :integer
  end
end
