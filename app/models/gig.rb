class Gig < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  def map_name
    name.gsub(/\s/, '+')
  end

  def map_key
    ENV.fetch('MAP_KEY')
  end

end
