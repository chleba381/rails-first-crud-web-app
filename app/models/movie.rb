class Movie < ApplicationRecord
	belongs_to :director
	has_many :ratings, dependent: :destroy
	validates :name, :release_date, :description, presence: true
	def ratings_10_hours
		Movie.ratings.where('created_at >= ?', 10.hours.ago).count
	end
end
