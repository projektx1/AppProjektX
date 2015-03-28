class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :contestName, :null => false
      t.string :shortDescription, :null => false
      t.string :fullDescription, :null => false
      t.datetime :beginDate, :null => false
      t.datetime :endDate, :null => false
      t.datetime :creationDate
      t.boolean :isActive
      t.boolean :isStandardMode
      t.boolean :isPromotedMode
      t.boolean :isVIPMode
      t.string :URL
    end
  end
end
