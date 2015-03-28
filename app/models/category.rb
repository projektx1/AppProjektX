class Category < ActiveRecord::Base

	validates :categoryName, :presence => true
	#has_and_belongs_to_many :
end
