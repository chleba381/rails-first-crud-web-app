class Movie < ApplicationRecord
	belongs_to :director
	has_many :ratings, dependent: :destroy
	validates :name, :release_date, :description, presence: true
end
