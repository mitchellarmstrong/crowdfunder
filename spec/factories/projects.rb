# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
  	user
  	title "rearden Metal"
  	teaser "It is lighter than traditional steel but stronger, and is to steel what steel is to iron"
  	description "It is described as greenish-blue. Among its ingredients are iron and copper"
  	goal 1000000
  end
end
