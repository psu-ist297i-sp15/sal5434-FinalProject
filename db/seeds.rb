# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
shakes = ['Protein', 'Nutrition', 'Energy']
toppings = ['Chocolate', 'Peanut Butter', 'Pineapple', 'Strawberry', 'Mango']

shakes.each do |s|
  Shake.create(name: s)
end

toppings.each do |t|
  Topping.create(name: t)
end

o=Order.new
o.is_active=true
o.pickup=DateTime.now
o.shake=Shake.first
o.toppings=Topping.all
o.save

o=Order.new
o.is_active=true
o.pickup=DateTime.now
o.shake=Shake.last
o.toppings=Topping.all[1..3]
o.save
