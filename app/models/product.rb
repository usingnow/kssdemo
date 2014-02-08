class Product < ActiveRecord::Base
	validates :name, :description, :list_price, :member_price, :category, presence: true
	validates :list_price, numericality: {greater_than_or_equal_to: 0.01}
	validates :member_price, numericality: {greater_than_or_equal_to: 0.01}
	validates :name, uniqueness: true
end
