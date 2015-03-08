# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ritz_carlton = Hotel.create(name: 'The Ritz-Carlton New York, Central Park')
mandarin_oriental = Hotel.create(name: 'Mandarin Oriental, New York')
['City View Guestroom', 'Deluxe Parkview Room'].each do |rc|
  ritz_carlton.rooms.create(name: rc)
end
['City View Room', 'Skyline View Room', 'Hudson River View Room'].each do |rc|
  mandarin_oriental.rooms.create(name: rc)
end