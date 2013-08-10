class Weblog < ActiveRecord::Base
	belongs_to :blog_user
	has_many :entries
end
