require 'spec_helper'

describe LocationsController do
  describe '#create' do
    describe 'with valid post data' do
      it 'creates a location' do
        eaten_at = Time.now.utc
        foursquare_id = 'ABC123'
        location_data = {
          eaten_at: eaten_at,
          foursquare_id: foursquare_id
        }

        post :create, { location: location_data }

        location = Location.last
        location.eaten_at.to_s.should eq eaten_at.to_s
        location.foursquare_id.should eq foursquare_id
      end

      it 'responds with a 201' do
        location_data = {
          eaten_at: Time.now,
          foursquare_id: 'EFG456'
        }

        post :create, { location: location_data }

        response.code.should eq '201'
      end

      it 'returns show URI' do
        location_data = {
          eaten_at: Time.now,
          foursquare_id: 'EFG456'
        }

        post :create, { location: location_data }

        response.body.should eq(
          { show_uri: "http://test.host/locations/#{Location.last.id}" }.to_json
        )
      end
    end

    describe 'with invalid post data' do
      it 'creates a location' do
        post :create, { location: nil }

        Location.count.should eq 0
      end

      it 'responds with a 400' do
        post :create, { location: nil }

        response.code.should eq '400'
      end

      it 'returns nothing' do
        post :create, { location: nil }

        response.body.should nil
      end
    end
  end
end
