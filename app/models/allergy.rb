class Allergy < ActiveRecord::Base
  attr_accessible :description, :name
  has_many  :clientallergies
  has_many  :clients, :through => :clientallergies
end
