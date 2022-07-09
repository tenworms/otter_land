# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Otter.destroy_all
Park.destroy_all

otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)
otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
otterworld = Park.create!(title: 'Otter World', hiring_workers: true, number_of_workers: 4)

mike = Otter.create!(otter_age: 6, otter_name: "Mike", able_to_work: true)
alexis = Otter.create!(otter_age: 14, otter_name: "Alexis", able_to_work: false)
spike = Otter.create!(otter_age: 10, otter_name: "Spike", able_to_work: true)
buddy = Otter.create!(otter_age: 1, otter_name: "Buddy", able_to_work: false)
al = Otter.create!(otter_age: 4, otter_name: "Al", able_to_work: true)
tails = Otter.create!(otter_age: 8, otter_name: "Tails", able_to_work: true)
potatoe = Otter.create!(otter_age: 11, otter_name: "Potatoe", able_to_work: false)
pip = Otter.create!(otter_age: 3, otter_name: "Pip", able_to_work: true)
olivia = Otter.create!(otter_age: 6, otter_name: "Olivia", able_to_work: true)
