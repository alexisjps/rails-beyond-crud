puts 'destroy all restaurants'
Restaurant.destroy_all
puts 'clean restaurant done'

puts 'creating restaurant'
resto1 = Restaurant.create!(name: 'Pitaya', address: 'Toulouse',rating: 2)
resto2 = Restaurant.create!(name: 'La cuisine de EMMA', address: 'Strasbourg',rating: 5)
resto3 = Restaurant.create!(name: 'La cuisine de Nour', address: 'Toulouse',rating: 4)
puts 'created restaurants'


puts 'creating reviews'
Review.create!(content: 'Super restaurant', restaurant_id: resto1.id)
Review.create!(content: 'Mauvais restaurant', restaurant_id: resto2.id)
Review.create!(content: 'Bof bof restaurant', restaurant_id: resto3.id)
puts 'created reviews'