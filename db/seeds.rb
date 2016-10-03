# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.destroy_all
100.times do
	Person.create(	remote_image_url: Faker::Avatar.image,
					name: Faker::Name.name, 
					age: Faker::Number.between(1,99), 
					email: Faker::Internet.email, 
					born_date: Faker::Date.backward(9999),
					city: Faker::Address.city) 
end