class Pledge < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	attr_accessible :amount, :project, :user_id

	validates :user, :presence => true
	validates :project, :presence => true
	validates :amount, :numericality => { :only_integer => true, :greater_than => 1 }



end
