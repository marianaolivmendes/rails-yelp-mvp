# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Bocca di Lupo',
    address:      '12 Archer St',
    category:     'Italian',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'Italian',
  },
 {
    name:         'Sushi Samba',
    address:      'London Heron Tower',
    category:     'Japanese',
  },
  {
    name:         'La Petite Ferme',
    address:      '104 Farringdon Rd',
    category:     'French',
  },
  {
    name:         'Peking Seoul London',
    address:      '113-115 Praed St, Tyburnia',
    category:     'Chinese',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
