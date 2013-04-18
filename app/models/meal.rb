class Meal < ActiveRecord::Base
  attr_accessible :amount, :mealofday
  has_many  :mealrecipes
  has_many  :recipes, :through => :mealrecipes
end
