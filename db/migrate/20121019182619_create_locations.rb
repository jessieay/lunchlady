class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.timestamps null: false
      t.integer :foursquare_id, null: false
      t.datetime :eaten_at
    end
  end
end
