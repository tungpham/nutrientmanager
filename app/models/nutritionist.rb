class Nutritionist < ActiveRecord::Base
  attr_accessible :something
  belongs_to  :user, :dependent => :destroy
  has_many  :clients, :dependent => :destroy
end
