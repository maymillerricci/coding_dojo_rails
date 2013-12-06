class User < ActiveRecord::Base
	validates :first_name, :last_name, :email, :password, presence: true
	validates :first_name, :last_name, length: {minimum: 2}
	validates :password, length: {minimum: 5}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: {with: VALID_EMAIL_REGEX}
end
