class CreateNutritionists < ActiveRecord::Migration
  def change
    create_table :nutritionists do |t|
      t.string :something
      t.integer :user_id

      t.timestamps
    end
  end
end
