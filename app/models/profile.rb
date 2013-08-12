class Profile < ActiveRecord::Base
	belongs_to :blog_user
	has_many :comments
	has_one :weblog

	#validates :user_id, uniqueness: true, numericality: true
	validates :blog_user_id, uniqueness: true, numericality: true
	validates :name, presence: true
	validates :age, numericality: true
end
