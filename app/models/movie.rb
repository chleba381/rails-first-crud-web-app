class Movie < ApplicationRecord
	belongs_to :director
	has_many :ratings, dependent: :destroy
	validates :name, :release_date, :description, presence: true

	def average_rating
		if ratings.any?
			ratings.map(&:value).sum.to_f / ratings.size
		else
			nil
		end
	end
end
