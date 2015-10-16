# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user=User.create(name: "user", email: "user@email.com", password: "test")

list=List.create(name: "Todo", priority: 0)
user.lists<<list

t1=Task.create(title: "Make ERD", priority: 0, complete: true)
t2=Task.create(title: "Draw page layout", priority: 1, complete: true)
t3=Task.create(title: "Drag and drop", priority: 2, complete: false)
list.tasks<<t1
list.tasks<<t2
list.tasks<<t3
