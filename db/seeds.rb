# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "user", email: "user@email.com", password_digest: "test")

List.create(name: "Todo", position: 0)

Item.create(name: "Make ERD", position: 0, complete: true)
Item.create(name: "Draw page layout", position: 1, complete: true)
Item.create(name: "Drag and drop", position: 2, complete: false)
