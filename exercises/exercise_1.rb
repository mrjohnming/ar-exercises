require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby = Store.create(annual_revenue: 300000)
richmond = Store.create(annual_revenue: 1260000)
gastown = Store.create(annual_revenue: 190000)

puts "Store.count = #{Store.count}"
