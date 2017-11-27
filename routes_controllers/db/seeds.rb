# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(username: 'Timmy')
user2 = User.create!(username: 'Bobby')
user3 = User.create!(username: 'Pete')

art1 = Artwork.create!(title: '5',image_url: 'https://en.wikipedia.org/wiki/No._5,_1948#/media/File:No._5,_1948.jpg', artist_id: 1)
art2 = Artwork.create!(title: 'Table, Napkin and Fruit',image_url: 'http://www.theartstory.org/images20/works/cezanne_paul_6.jpg?2', artist_id: 2)
