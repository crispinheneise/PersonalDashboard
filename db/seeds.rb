# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
firstGoal = Goal.all.first
todaysValue = 1

Progress.destroy_all

6.downto(0).map do |num|
  if num != 3
    Progress.create(value: todaysValue, goal: firstGoal, done_on: num.days.ago)
    todaysValue = todaysValue + 1
  end
end