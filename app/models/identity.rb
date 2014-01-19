class Identity < ActiveRecord::Base
  #t.string :name
  #t.string :password_digest

  validates :name, presence: true, uniqueness:true

  has_secure_password
  has_one :user
end
