class CreateRewardsUsers < ActiveRecord::Migration
  def change
    create_table :rewards_users, id: false do |t|
     
      t.belongs_to :reward, index: true
 	  t.belongs_to :user, index: true
    end
  end
end
