# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'populator'

[Section, Professor, Student, Course].each(&:delete_all)

# Create Professors
professors = (1..30).to_a.map do |n|
  name = FFaker::Name.name
  email = FFaker::Internet.email

  Professor.create!(
    name: name,
    email: email
  )
end

# Create Students
100.times do |n|
  name = FFaker::Name.name
  email = FFaker::Internet.email

  student = Student.create!(
    name: name,
    email: email
  )

  student.sections.create(
    professor: professors[0]
  )

  student.sections.create(
    professor: professors[rand(professors.size)]
  )

end

# Create Courses

20.times do |n|
  name = FFaker::Education.major
  course = Course.create!(
    name: name
  )
  course.sections.create(

  )

end


=begin
Professor.populate 10 do |professor|
  professor.name = FFaker::Name.name
  professor.email   = FFaker::Internet.email
end


Student.populate 100 do |student|
  student.name = FFaker::Name.name
  student.email   = FFaker::Internet.email

  student.sections.create(
    Professor: professors[0]
  )

  student.sections.create(
                    Professor: Section[rand(sect)]
  )
end

Course.populate 15 do |course|
  course.name = FFaker::Education.major

  course.sections.create()



end
=end











