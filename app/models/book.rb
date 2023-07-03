class Book < ApplicationRecord
	has_many :like, dependent: :destroy
	has_many :lover, through: :like, source: :user 
end
