require 'spec_helper'

describe Location do
  describe 'location validations' do
    it { should validate_presence_of(:foursquare_id) }
    it { should validate_uniqueness_of(:foursquare_id) }
  end
end
