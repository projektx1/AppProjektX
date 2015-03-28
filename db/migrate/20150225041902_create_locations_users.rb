class CreateLocationsUsers < ActiveRecord::Migration
  def change
    create_table :locations_users, id: false do |t|
     
      t.belongs_to :location, index: true
 	  t.belongs_to :user, index: true
    end
  end
end
