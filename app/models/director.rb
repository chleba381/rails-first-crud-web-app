class Director < ApplicationRecord
	has_many :movies, dependent: :destroy
	has_many :ratings

	def average_rating
		all_ratings = movies.map { |m| m.average_rating }.compact
		if all_ratings.any?
			all_ratings.sum.to_f / all_ratings.count
		else
			nil
		end
	end

	def highest_rated_movie
		movies_with_rating = movies.to_a.select { |m| m.average_rating }
		movies_with_rating.max_by { |m| m.average_rating }
	end

	def lowest_rated_movie
		movies_with_rating = movies.to_a.select { |m| m.average_rating }
		movies_with_rating.min_by { |m| m.average_rating }
	end

end
