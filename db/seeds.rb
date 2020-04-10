# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
owner = Owner.create(name: "Sam's Snacks")
dons  = owner.machines.create(location: "Don's Mixed Drinks")
turing  = owner.machines.create(location: "Turing Basement")
burger = dons.snacks.create!(name: "White Castle Burger",
                            price: 3.50)
poprocks = dons.snacks.create!(name: "Pop Rocks",
                            price: 1.50)
cheetos = dons.snacks.create!(name: "Flaming Hot Cheetos",
                            price: 2.50)
SnackMachine.create!(snack: cheetos, machine: turing)
SnackMachine.create!(snack: poprocks, machine: turing)      
