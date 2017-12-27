Dir['./lib/search/*.rb'].each { |file| require file }
Dir['./lib/utils/*.rb'].each { |file| require file }


class InvitationSender
  def initialize(data_file, radius, office_latitude, office_longitude)
    @data_file = data_file
    @office_latitude = office_latitude.to_f
    @office_longitude = office_longitude.to_f
    @radius = radius.to_i
  end

  #load the data file, gets the guests and prints to STDOUT
  def guest_list
    extract_data = ExtractGuestData.new(@data_file)
    puts @extract_data
    locations = extract_data.load_file
    guests = FindGuests.new(locations, @office_latitude, @office_longitude, @radius).search_guests
    if guests.empty?
      puts "\n Sorry no guests found."
    else
      puts "\nGuest list for Invitations\n"
      puts "==========\n"
      guests.each {|guest|p "#{guest["user_id"]} -- #{guest["name"]}"}
    end
    nil
  rescue => e
    puts "There was an error retrieving the guest list. \n"
    puts "ERROR: #{e.message}"
    puts "\n #{e.backtrace}"

  end

end
