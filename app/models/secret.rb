class Secret < ActiveRecord::Base
	belongs_to :user
	has_many :likes
	has_many :liking_users, :through => :likes, :source => :user #who liked it
end

