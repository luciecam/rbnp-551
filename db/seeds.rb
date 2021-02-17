# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Machine.destroy_all
User.destroy_all

user1 = User.create!(
  email: "pierre@gmail.com",
  password: "pierre12345",
  )

user2 = User.create!(
  email: "jean@gmail.com",
  password: "jean12345",
  )

user3 = User.create!(
  email: "claude@gmail.com",
  password: "claude12345",
  )

# p user1
# p 'user created'

# p 'creating machine'

Machine.create!(
  name: "Super raclette",
  description: "Incroyable machine à raclette",
  price: 9,
  user_id: user1.id,
  address: "10 rue oberkampf",
  condition: "Moyen",
  rating: 3
  )

Machine.create!(
  name: "Fondue 3.0",
  description: "Machine à fondue révolutionnaire",
  price: 12,
  user_id: user1.id,
  address: "20 rue Gambetta",
  condition: "Bon etat",
  rating: 4
  )

Machine.create!(
  name: "Pierrade apero",
  description: "Pierrade pour apéro du vendredi",
  price: 7,
  user_id: user1.id,
  address: "50 avenue Eclaire",
  condition: "Parfait etat",
  rating: 3
  )

Machine.create!(
  name: "Machine à fondue neuve",
  description: "Machine à fondue très peu utilisée",
  price: 11,
  user_id: user2.id,
  address: "42 rue Nungesser",
  condition: "Neuve",
  rating: 4
  )

Machine.create!(
  name: "Pierrade géante",
  description: "Pierrade pour 10 personnes",
  price: 19,
  user_id: user2.id,
  address: "135 rue Revolte",
  condition: "Moyen",
  rating: 3
  )

Machine.create!(
  name: "Raclette nettoyante",
  description: "Raclette qui se nettoie seule",
  price: 12,
  user_id: user2.id,
  address: "50 avenue Coli",
  condition: "Parfait etat",
  rating: 5
  )

Machine.create!(
  name: "Raclette qui déchire",
  description: "Raclette qui se chauffe en 8sc",
  price: 9,
  user_id: user3.id,
  address: "135 rue Mayotte",
  condition: "Moyen",
  rating: 3
  )

Machine.create!(
  name: "fondue au chocolat",
  description: "Machine pour fondue au chocolat",
  price: 15,
  user_id: user3.id,
  address: "50 avenue Pite",
  condition: "Parfait etat",
  rating: 5
  )

