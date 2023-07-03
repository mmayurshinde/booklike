class User < ApplicationRecord
	has_many :likes, dependent: :destroy
	has_many :fbook, through: :likes, source: :book
end
