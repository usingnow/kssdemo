class Product < ActiveRecord::Base
	validates :name, :description, :list_price, :member_price, :category, presence: true
	validates :list_price, numericality: {greater_than_or_equal_to: 0.01}
	validates :member_price, numericality: {greater_than_or_equal_to: 0.01}
	validates :name, uniqueness: true
	has_attached_file :photo, styles: { thumb: "100x100>" }, 
	:url => "/assets/products/:id/:style/:basename.:extension",
	:path => ":rails_root/public/assets/products/:id/:style/:basename.:extension" 
	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
	validates_attachment_file_name :photo, :matches => [/png\Z/, /jpe?g\Z/]
end
