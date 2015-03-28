class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :country, :null => false
      t.string :cityName, :null => false
    end
  end
end
