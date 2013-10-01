class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :email, :password
  has_many :projects
  has_many :pledges

  validates :password, :presence => true, :on => :create
  validates :email, 
		:presence => true,
		:format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i},
		:uniqueness => true

end
