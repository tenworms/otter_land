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

mike = otterland.otters.create!(otter_age: 6, otter_name: "Mike", able_to_work: true)
alexis = otterland.otters.create!(otter_age: 14, otter_name: "Alexis", able_to_work: false)
spike = otterland.otters.create!(otter_age: 10, otter_name: "Spike", able_to_work: true)
buddy = otterkingdom.otters.create!(otter_age: 1, otter_name: "Buddy", able_to_work: false)
al = otterkingdom.otters.create!(otter_age: 4, otter_name: "Al", able_to_work: true)
tails = otterkingdom.otters.create!(otter_age: 8, otter_name: "Tails", able_to_work: true)
potatoe = otterworld.otters.create!(otter_age: 11, otter_name: "Potatoe", able_to_work: false)
pip = otterworld.otters.create!(otter_age: 3, otter_name: "Pip", able_to_work: true)
olivia = otterworld.otters.create!(otter_age: 6, otter_name: "Olivia", able_to_work: true)
