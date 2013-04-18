class Userprofile < ActiveRecord::Base
  attr_accessible :address, :city, :firstname, :gender, :lastname, :phone, :user_id, :zipcode

  belongs_to :user
end
