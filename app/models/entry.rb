class Entry < ActiveRecord::Base
	belongs_to :weblog
	has_many :comments

	validates :weblog_id, numericarity: true
	validates :title, presence: true
end
