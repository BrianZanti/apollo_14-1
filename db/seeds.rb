# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Astronaut.destroy_all

neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
buzz = Astronaut.create(name: "Buzz Aldrin", age: 45, job: "Engineer")
sally = Astronaut.create(name: "Sally Ride", age: 33, job: "Navigator")
