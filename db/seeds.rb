# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
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


file = URI.open('https://images-na.ssl-images-amazon.com/images/I/51jcFSrdm7L._AC_SX450_.jpg')
machine1 = Machine.new(
  name: "Super raclette",
  description: "Incroyable machine à raclette",
  price: 9,
  user_id: user1.id,
  address: "10 rue oberkampf, Paris",
  condition: "Moyen",
  rating: 3,
  capacity: 2,
  category: "Raclette"
)
machine1.photo.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
machine1.save

file = URI.open('https://cdn.laredoute.com/products/680by680/3/f/2/3f2f44eec860dbf69722ccae5e67f56c.jpg')
machine2 = Machine.new(
  name: "Fondue 3.0",
  description: "Machine à fondue révolutionnaire",
  price: 12,
  user_id: user1.id,
  address: "20 rue Gambetta, Paris",
  condition: "Bon etat",
  rating: 4,
  capacity: 4,
  category: "Fondue"
  )
machine2.photo.attach(io: file, filename: 'nes2.png', content_type: 'image/png')
machine2.save

file = URI.open('https://cdn.laredoute.com/products/680by680/7/2/6/726dfbef82817c4685d5780bc7a91674.jpg')
machine3 = Machine.new(
  name: "Pierrade apero",
  description: "Pierrade pour apéro du vendredi",
  price: 7,
  user_id: user1.id,
  address: "50 avenue Eclaire, Paris",
  condition: "Parfait etat",
  rating: 3,
  capacity: 6,
  category: "Pierrade"
  )
machine3.photo.attach(io: file, filename: 'nes3.png', content_type: 'image/png')
machine3.save

file = URI.open('https://cdn.laredoute.com/products/680by680/6/9/6/696790486d76c4e858d5eb45332db514.jpg')
machine4 = Machine.new(
  name: "Machine à fondue neuve",
  description: "Machine à fondue très peu utilisée",
  price: 11,
  user_id: user2.id,
  address: "42 avenue de la république, Paris",
  condition: "Neuve",
  rating: 4,
  capacity: 8,
  category: "Fondue"
  )
machine4.photo.attach(io: file, filename: 'nes4.png', content_type: 'image/png')
machine4.save
file = URI.open('https://media.mathon.fr/Images/Produitsv2/Amazon/780211_0_2-Appareil-a-raclette-fondue-12-personnes-1650-W-Livoo.jpg')
machine5 = Machine.new(
  name: "Pierrade géante",
  description: "Pierrade pour 10 personnes",
  price: 19,
  user_id: user2.id,
  address: "135 rue Revolte, Paris",
  condition: "Moyen",
  rating: 3,
  capacity: 12,
  category: "Pierrade"
  )
machine5.photo.attach(io: file, filename: 'nes5.png', content_type: 'image/png')
machine5.save

file = URI.open('https://media.mathon.fr/Images/Produitsv2/Amazon/760305_0_4-Appareil-a-raclette-Bamboo-8-poelons-et-2-double-poelons-1500-W-KCWOOD-8-MAXI-Kitchen-Chef-Professional.jpg')
machine6 = Machine.new(
  name: "Raclette nettoyante",
  description: "Raclette 2.4",
  price: 12,
  user_id: user2.id,
  address: "4 boulevard jules ferry, Paris",
  condition: "Parfait etat",
  rating: 5,
  capacity: 9,
  category: "Raclette"
  )
machine6.photo.attach(io: file, filename: 'nes6.png', content_type: 'image/png')
machine6.save
file = URI.open('https://cdn.laredoute.com/products/680by680/c/f/e/cfea2f09146315ea79d07ab6ccfd2ae6.jpg')
machine7 = Machine.new(
  name: "Raclette qui déchire",
  description: "Raclette qui se chauffe en 8sc",
  price: 9,
  user_id: user3.id,
  address: "135 rue Mayotte, Paris",
  condition: "Moyen",
  rating: 3,
  capacity: 3,
  category: "Raclette"
  )
machine7.photo.attach(io: file, filename: 'nes7.png', content_type: 'image/png')
machine7.save
file = URI.open('https://boulanger.scene7.com/is/image/Boulanger/bfr_overlay?layer=comp&$t1=&$product_id=Boulanger/8713016016034_h_f_l_0&wid=350&hei=350')
machine8 = Machine.new(
  name: "fondue au chocolat",
  description: "Machine pour fondue au chocolat",
  price: 15,
  user_id: user3.id,
  address: "50 avenue Pite, Paris",
  condition: "Parfait etat",
  rating: 5,
  capacity: 4,
  category: "Fondue"
  )
machine8.photo.attach(io: file, filename: 'nes8.png', content_type: 'image/png')
machine8.save

Booking.create!(
  user: user1,
  machine: machine1,
  start_date: Date.today,
  end_date: Date.today + 7,
  price: 99,
)


