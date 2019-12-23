# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Training.destroy_all
Plan.destroy_all

marathon = Plan.new
marathon.name = 'marathon'
marathon.start_date = Date.today()
marathon.end_date = Date.today() + 120

trail = Plan.new
trail.name = 'trail'
trail.start_date = Date.today()
trail.end_date = Date.today() + 120

(0...120).each_with_index do |_, index|
  plan = marathon
  date = Date.today + index
  description = "3x5' au seuil parcours jazy"
  Training.create(plan: plan, date: date, description: description)
end

(0...120).each_with_index do |_, index|
  plan =trail
  date = Date.today + index
  description = "3x5' au seuil parcours jazy"
  Training.create(plan: plan, date: date, description: description)
end
