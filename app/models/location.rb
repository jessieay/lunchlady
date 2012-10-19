class Location < ActiveRecord::Base
  attr_accessible :eaten_at, :foursquare_id

  validates :foursquare_id, presence: true, uniqueness: true
end
