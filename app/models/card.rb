class Card < ActiveRecord::Base
  
  # attributes:
  # number
  # status

  validates :number, presence: true

end
