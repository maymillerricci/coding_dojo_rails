class Product < ActiveRecord::Base
	validates :name, :pricing, presence: true
	validates :pricing, numericality: true
	belongs_to :category
	has_many :comments
end
