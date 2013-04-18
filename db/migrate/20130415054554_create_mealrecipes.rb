class CreateMealrecipes < ActiveRecord::Migration
  def change
    create_table :mealrecipes do |t|
      t.integer :meal_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
