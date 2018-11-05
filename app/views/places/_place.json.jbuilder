json.extract! place, :id, :name, :description, :address, :neighborhood_id, :pictureMedium, :latitude, :longitude, :like, :not_like, :created_at, :updated_at
json.url place_url(place, format: :json)
