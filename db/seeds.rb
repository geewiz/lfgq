# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dungeon = Event.create(
  title: "Dungeon run",
  description: "A dungeon run with 5 people",
)

dungeon.event_roles.create(
  name: "Tank",
  amount: 1,
)
dungeon.event_roles.create(
  name: "Healer",
  amount: 1,
)
dungeon.event_roles.create(
  name: "Damage Dealer",
  amount: 3,
)

raid = Event.create(
  title: "Raid run",
  description: "A raid run with 10 people",
)

raid.event_roles.create(
  name: "Tank",
  amount: 2,
)
raid.event_roles.create(
  name: "Healer",
  amount: 2,
)
raid.event_roles.create(
  name: "Damage Dealer",
  amount: 6,
)
