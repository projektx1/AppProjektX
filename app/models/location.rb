class Location < ActiveRecord::Base

validates :cityName, :presence => true
	has_and_belongs_to_many :user

def display_name
	"#{country} #{cityName}"
end

end
