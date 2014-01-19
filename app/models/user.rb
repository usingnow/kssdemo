class User < ActiveRecord::Base
  has_one :identity
end
