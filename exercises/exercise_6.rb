require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
 Store.has_many :employees
 Employee.belongs_to :store

 @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

 @store2.employees.create(first_name: "Sunney", last_name: "Boi", hourly_rate: 40)

 @store3.employees.create(first_name: "Khali", last_name: "Rock", hourly_rate: 50)

 @store2.employees.create(first_name: "Kaur", last_name: "SS", hourly_rate: 90)

 @store1.employees.create(first_name: "Simar", last_name: "kk", hourly_rate: 70)