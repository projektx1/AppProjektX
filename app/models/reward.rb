class Reward < ActiveRecord::Base
	validates :rewardName, :presence => true
	has_and_belongs_to_many :user
end
