class Recipe < ActiveRecord::Base
  attr_accessible :name
  has_many  :mealrecipes
  has_many  :meals, :through => :mealrecipes
end
