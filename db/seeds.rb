# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
require 'faker'
models = ["Camo Suburban","Daredevil","Mindblower","Outlander"]
[1..1024].each do
	        Order.create!(name: Faker::Name.name, email: Faker::Internet.email, model: models.sample, details: Faker::Lorem.sentence)
		        sleep(1)
end
