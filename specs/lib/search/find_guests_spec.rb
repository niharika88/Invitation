require  './lib/search/find_guests'

describe FindGuests do
  before :example do
    @locations = ExtractGuestData.new("specs/support/guests_valid_data.txt").load_file
  end

  subject { FindGuests.new(@locations, 53.3381985, -6.2592576, 100) }

  context "Search" do
    it "should find guests within a 100km radius" do
      expect(subject.search_guests).to match_array([@locations[0], @locations[1]])
    end

    it "should return an empty result set when no guests are found" do
      expect(FindGuests.new(@locations, 53.3381985, -6.2592576, 1).search_guests).to match_array([])
    end
  end

end