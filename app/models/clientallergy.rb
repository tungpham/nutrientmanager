class Clientallergy < ActiveRecord::Base
  attr_accessible :allergy_id, :client_id
  belongs_to  :client
  belongs_to  :allergy
end
