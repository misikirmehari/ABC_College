# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'populator'

[Section, Professor, Student , Course].each(&:delete_all)

Professor.populate 10 do |professor|
  professor.name = FFaker::Name.name
  professor.email   = FFaker::Internet.email
end


Student.populate 100 do |student|
  student.name = FFaker::Name.name
  student.email   = FFaker::Internet.email
end

Course.populate 15 do |course|
  course.name = FFaker::Education.major

end




