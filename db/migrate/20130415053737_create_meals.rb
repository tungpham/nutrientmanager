class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :recipe_id
      t.integer :amount
      t.string :mealofday

      t.timestamps
    end
  end
end
