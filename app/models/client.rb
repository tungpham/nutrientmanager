class Client < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :nutritionist
  has_many  :clientallergies
  has_many  :allergies, :through => :clientallergies
end
