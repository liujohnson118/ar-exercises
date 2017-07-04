require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total annual revenue of all stores is #{Store.sum(:annual_revenue)}"
puts "Average annual revenue of all stores is #{Store.average(:annual_revenue)}"
@big_stores=Store.where('annual_revenue > ?',1000000)
@big_stores.each{
  |store|
  puts "Store #{store.name} makes #{store.annual_revenue} a year"
}
puts "There are #{@big_stores.length} stores making over a million a year"