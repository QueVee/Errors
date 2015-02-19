# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
errors = [
	[ 'Unknown action', 'The action \'show\' could not be found for ErrorsController.'],
	[ 'NoMethodError in File#index', 'undefined method \'each\' for nil:NilClass'],
	[ 'Template is missing', 'Missing template errors/index, application/index...']
]

errors.each do |error|
  Error.create(title: error[0], text: error[1])
end

