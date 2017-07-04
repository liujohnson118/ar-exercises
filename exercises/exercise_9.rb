
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_8'

# Make sure non-empty stores cannot be destroyed
@store1 = Store.find(1)
# store1Destroyed=@store1.destroy
if @store1.destroy
  puts "Store1 destroyed! It has #{@store1.employees.size} =/"
else
  puts "Could not destroy store 1:)"
end

emptyStore=Store.create!(name:'Test empty store',annual_revenue:0,mens_apparel:true,womens_apparel:false)
if emptyStore.destroy
  puts "emptyStore destroyed! It has #{emptyStore.employees.size} =/"
else
  puts "Could not destroy emptyStore:)"
end


# Make sure empty stores can be destroyed
#@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0)
# if @empty_store.destroy
#   puts "Empty Store destroyed! This is good"
# else
#   puts "Whoa! Empty store should be destroyable... Not cool!"
# end
