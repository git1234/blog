class Comment < ActiveRecord::Base
	belongs_to :entry
	#belongs_to :blog_user
	belongs_to :profile

	validates :entry_id, numericality: true
	validates :user_id, numericality: true
	validates :comment, presence: true,  exclusion: { :in => ["fuck", "禁止ワード"] }
end
