# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
player_a = Player.create(
  name: 'matty',
  browser_brand: 'Safari',
  browser_ver: '14.0.1',
  os_brand: 'MacOS',
  os_ver: '11.0.1'
)

player_b = Player.create()

# game_a = Game.create(
#     keys_pressed: "",
#     score: "",
#     player_id: 1
#     )

game_b = Game.create(
    player_id: 1
    )

# player_a = Player.create(
# name: "matty",
# lives: 3,
# score: 10284,
# browser_brand: "Safari",
# browser_ver: "14.0.1",
# os_brand: "MacOS",
# os_ver: "11.0.1"
# )
