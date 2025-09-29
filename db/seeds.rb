# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 
# 
# db/seeds.rb

# db/seeds.rb

Player.destroy_all
Game.destroy_all

# Create Players
player_a = Player.create!(
  name: "Matty",
  lives: 3,
  score: 10_284,
  browser_brand: "Safari",
  browser_ver: "14.0.1",
  os_brand: "MacOS",
  os_ver: "11.0.1"
)

player_b = Player.create!(
  name: "Casey",
  lives: 5,
  score: 8_000,
  browser_brand: "Chrome",
  browser_ver: "131.0.0",
  os_brand: "Windows",
  os_ver: "11"
)

player_c = Player.create!(
  name: "Jordan",
  lives: 2,
  score: 12_345,
  browser_brand: "Firefox",
  browser_ver: "122.0",
  os_brand: "Linux",
  os_ver: "Ubuntu 22.04"
)

player_d = Player.create!(
  name: "Taylor",
  lives: 4,
  score: 15_678,
  browser_brand: "Edge",
  browser_ver: "130.0.0",
  os_brand: "Windows",
  os_ver: "10"
)

player_e = Player.create!(
  name: "Riley",
  lives: 1,
  score: 2_345,
  browser_brand: "Safari",
  browser_ver: "17.0.3",
  os_brand: "iOS",
  os_ver: "17.2"
)

# Create Games
Game.create!(
  keys_pressed: "ASDF",
  score: 1_000_000,
  player: player_a
)

Game.create!(
  keys_pressed: "JKL;",
  score: 500_000,
  player: player_b
)

Game.create!(
  keys_pressed: "QWER",
  score: 750_000,
  player: player_c
)

Game.create!(
  keys_pressed: "ZXCV",
  score: 900_000,
  player: player_d
)

Game.create!(
  keys_pressed: "POIU",
  score: 250_000,
  player: player_e
)

puts "Seeded #{Player.count} players and #{Game.count} games."
