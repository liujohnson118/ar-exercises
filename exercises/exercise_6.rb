require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create!(first_name:'a',last_name:'A',hourly_rate:50)
@store1.employees.create!(first_name:'b',last_name:'B',hourly_rate:50)
@store1.employees.create!(first_name:'c',last_name:'C',hourly_rate:50)

@store2.employees.create!(first_name:'d',last_name:'D',hourly_rate:50)
@store2.employees.create!(first_name:'e',last_name:'E',hourly_rate:50)
@store2.employees.create!(first_name:'f',last_name:'F',hourly_rate:50)

@store1.employees.each{|employee|
  puts "Store 1 employee #{employee.first_name} works in store #{employee.store.id}"}

@store2.employees.each{|employee|
  puts "Store 2 employee #{employee.first_name} works in store #{employee.store.id}"}