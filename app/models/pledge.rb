class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  
  attr_accessible :amount, :project, :user_id
end
