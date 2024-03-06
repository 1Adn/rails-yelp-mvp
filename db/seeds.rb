# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Creating Restaurants Seeds...'
restaurant1 = Restaurant.new(name: 'Le Bio Bol', address: '3 rue du chemin', category: 'french')
restaurant1.save!
restaurant2 = Restaurant.new(name: 'Un Goût de Paradis', address: '7 rue de la gare', category: 'chinese')
restaurant2.save!
restaurant3 = Restaurant.new(name: 'Carnaval Culinaire', address: 'Avenue des loups', category: 'belgian')
restaurant3.save!
restaurant4 = Restaurant.new(name: "L'Herbivore", address: 'Rue du pont rouge', category: 'japanese')
restaurant4.save!
restaurant5 = Restaurant.new(name: 'Trattoria Lucrezia', address: '10 rue la tour du ciel', category: 'italian')
restaurant5.save!
puts 'Restaurants Seeds created !'
puts 'Creating Reviews Seeds...'
Restaurant.all.each do |restaurant|
  3.times do
    review = Review.new(content: "Ceci est une review, j'ai super bine manger ici.", rating: 3, restaurant: restaurant)
    review.save!
  end
end
puts 'Reviews Seeds created !'
