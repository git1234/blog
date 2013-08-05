class User < ActiveRecord::Base
	has_one :blog
	has_many :comments
end
