require  './lib/utils/distance_calculator'

class FindGuests
  def initialize(locations, office_latitude, office_longitude, radius_range)
    @locations = locations
    @office_longitude = office_longitude
    @office_latitude = office_latitude
    @radius_range = radius_range
    
  end

  #finds guests within the given radius range, sorted by ID (ascending)
  def search_guests
    guests = []
    @locations.each do |user_location|
      distance = DistanceCalculator.new(@office_latitude, @office_longitude, user_location["latitude"], user_location["longitude"]).distance_between_2_points
      guests << user_location if distance <= @radius_range
    end
    guests.sort! {|k,v| k["user_id"] <=> v["user_id"] }
  end

end