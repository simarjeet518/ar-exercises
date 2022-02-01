require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Sum  #{Store.sum(:annual_revenue)}"

puts "Averge #{Store.average(:annual_revenue)}"

@store_annual_revenue = Store.where("annual_revenue >= ?", 1000000 ).count

puts "Number of store that are generating $1M or more in annual sales :#{@store_annual_revenue}"