class Weblog < ActiveRecord::Base
	#belongs_to :blog_user
	belongs_to :profile
	has_many :entries

	validates_uniqueness_of :profile_id
	validates_uniqueness_of :user_id
end
