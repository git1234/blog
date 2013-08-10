class Weblog < ActiveRecord::Base
	#belongs_to :blog_user
	belongs_to :profile
	has_many :entries

	validates :profile_id, uniqueness: true, numericality: true
	validates :user_id, uniqueness: true, numericality: true
end
