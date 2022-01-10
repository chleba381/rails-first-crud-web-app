class Movie < ApplicationRecord
	belongs_to :director
	validates :name, :release_date, :description, presence: true
end
