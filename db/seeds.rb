# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
	{first_name: "Abraham", last_name: "Oshel",
		email: "fake@faker.com", password: "password",
		password_confirmation: "password",},
	{first_name: "Paolo", last_name: "Cosentino",
		email: "fake2@faker.com", password: "password",
		password_confirmation: "password",}
	{first_name: "Brett", last_name: "Lischalk",
		email: "brett@brettlischalk.com", password: "password",
		password_confirmation: "password",}
].each do |hash|
	u = User.find_or_initialize_by(email: hash[:email])

	u.update_attributes(first_name: hash[:first_name],
		last_name: hash[:last_name],
		email: hash[:email], password: hash[:password],
		password_confirmation: hash[:password_confirmation],
		confirmed_at: Date.today
	)
	u.save
end