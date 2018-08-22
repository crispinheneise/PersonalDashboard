# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

goal = Goal.find_or_create_by(name: "20 Pushups Per Day", value: 20)
progress = []
(0..2).each do |num|
  progress << Progress.create(value: Random.rand(25), goal: goal, date: num.days.ago)
end
progress << Progress.create(value: 5, goal: goal, date: 4.days.ago)
progress << Progress.create(value: 22, goal: goal, date: 5.days.ago)
progress << Progress.create(value: 20, goal: goal, date: 6.days.ago)
progress << Progress.create(value: 10, goal: goal, date: 7.days.ago)