class Weblog < ActiveRecord::Base
	belong_to :user
	has_many :entries
end
