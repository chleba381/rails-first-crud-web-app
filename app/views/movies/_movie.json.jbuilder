json.extract! movie, :id, :name, :release_date, :description, :created_at, :updated_at
json.url movie_url(movie, format: :json)
