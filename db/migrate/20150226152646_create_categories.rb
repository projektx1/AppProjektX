class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
	  t.string :categoryName
    end
  end
end
