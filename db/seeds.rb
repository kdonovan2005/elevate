# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kristin = User.create(name: "Kristin", email: "kristin@me.com")
steve = User.create(name: "Steve", email: "steve@me.com")

job = Goal.create(user: kristin, name: "Get a job!", start_date: Time.now, end_date: Time.now + 5, active: true)
get_job = Goal.create(user: steve, name: "Jobs Please", start_date: Time.now, end_date: Time.now + 5, active: true)

ListItem.create(goal: job, description: "I'm a list-item", frequency: "Daily", completed: false)
ListItem.create(goal: get_job, description: "I'm another list-item", frequency: "Daily", completed: false)
