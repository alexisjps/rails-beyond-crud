puts 'Destroy all restaurants'
Restaurant.destroy_all
puts 'Done'

puts 'Creating restaurant'
resto1 = Restaurant.create(name: 'Le bruger maison', address: '120 chemin de la pelud 77150', rating: 3)
resto2 = Restaurant.create(name: 'Les mecs au camion', address: 'Toulouse', rating: 5)
resto3 = Restaurant.create(name: 'La douce frite', address: 'Bordeaux', rating: 4)
puts 'created restaurant'

puts 'creating reviews'
Review.create(content: 'Woaouh expérience de fou jadore', restaurant_id: resto1.id)
Review.create(content: 'Woaouh expérience de fou jadore', restaurant_id: resto2.id)
Review.create(content: 'Woaouh expérience de fou jadore', restaurant_id: resto2.id)
puts 'finish created reviews'