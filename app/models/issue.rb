class Issue < ActiveRecord::Base
	belongs_to :user
	belongs_to :building
	belongs_to :contractor
end