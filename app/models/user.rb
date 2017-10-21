class User < ApplicationRecord
	validates :firstname, :lastname, :email, :password, presence: true
	validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :password, length: { in: 3..6 }
	validates :house_number, numericality: { only_integer: true }
end
