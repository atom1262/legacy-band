class Gig < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  def map_name
    name.gsub(/\s/, '+')
  end

  def api_key
    ENV.fetch('KEY')
  end

end
