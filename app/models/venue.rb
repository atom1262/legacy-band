class Venue < ActiveRecord::Base
  attr_accesible :address, :latitude, :longitude
  geocoded_by: address
  after_validation: :geocode

end
