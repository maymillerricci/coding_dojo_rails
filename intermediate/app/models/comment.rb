class Comment < ActiveRecord::Base
  belongs_to :product
  validates :author, :content, :product_id, presence: true
end
