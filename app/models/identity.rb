class Identity < ActiveRecord::Base
  #t.string :name
  #t.string :password_digest

  validates :name, presence: true, uniqueness:true
  validates :password, length: {minimum: 6}

  has_secure_password
  has_one :user
end
