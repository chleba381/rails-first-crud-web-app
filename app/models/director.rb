class Director < ApplicationRecord
	has_many :movies, dependent: :destroy
	has_many :ratings
end
