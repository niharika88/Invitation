require './specs/spec_helper'
require './lib/utils/extract_guest_data'

describe ExtractGuestData do
  
  context "Extract data with valid data file" do
    before :example do
      valid_file = "specs/support/guests_valid_data.txt"
      @valid_records = File.readlines(valid_file).size
      @extract_data = ExtractGuestData.new(valid_file)
    end

    it "should parse and load the json data file" do
      expect(@extract_data.load_file.size).to eq(@valid_records)
    end
  end

  context "Extract data with invalid records in data file" do
    before :example do
      invalid_file = "specs/support/guests_invalid_data.txt"
      @total_records = File.readlines(invalid_file).size
      @extract_data = ExtractGuestData.new(invalid_file)
    end

    it "should skip the invalid records and load the json data file" do
      expect(@extract_data.load_file.size).to_not eq(@total_records)   
    end
  end

end