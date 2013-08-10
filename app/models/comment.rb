class Comment < ActiveRecord::Base
	belongs_to :entry
	belongs_to :blog_user
end
