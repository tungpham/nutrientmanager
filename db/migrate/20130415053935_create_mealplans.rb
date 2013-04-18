class CreateMealplans < ActiveRecord::Migration
  def change
    create_table :mealplans do |t|
      t.integer :meal_id
      t.integer :client_id

      t.timestamps
    end
  end
end
