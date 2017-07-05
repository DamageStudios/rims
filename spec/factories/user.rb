# spec/factories/user.rb
require 'faker'

FactoryGirl.define do
	factory :user do |f|
    f.name { Faker.name }
    f.username { Faker::Internet.user_name }
		f.email { Faker::Internet.email }
		f.password { Faker::Internet.password }
	end
end
