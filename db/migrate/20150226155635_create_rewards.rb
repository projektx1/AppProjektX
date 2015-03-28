class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :rewardName
    end
  end
end
