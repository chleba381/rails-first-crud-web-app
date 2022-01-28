class RatingsController < ApplicationController

	before_action :find_movie

	def new
		@rating = Rating.new
	end

	def ratings_latest_10
    	ratings.where('created_at >= ?', 10.hours.ago).count
  	end

	def create
		@rating = Rating.new(rating_params)
		@rating.movie_id = @movie.id
		@rating.save
		if @rating.save
     respond_to do |format|
       format.html { redirect_to movie_url(@movie), notice: "Vaše hodnocení bylo zaznamenáno!" }
       format.js
     end
   end
	end

	private

		def rating_params
			params.permit(:value)
		end

		def find_movie
			@movie = Movie.find(params[:movie_id])
		end

end