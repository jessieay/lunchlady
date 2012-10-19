class ChangeDataTypeForFoursquareId < ActiveRecord::Migration
  change_table :locations do |t|
    t.change :foursquare_id, :string, null: false
  end
end
