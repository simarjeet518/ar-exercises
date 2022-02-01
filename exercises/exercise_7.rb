require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_numericality_of :hourly_rate, only_integer: true 
  validates_inclusion_of :hourly_rate, :in => 40..200
  validates :store_id , presence: true

end

class Store
  validates :name, presence: true ,length: {minimum: 3}
  validates_numericality_of :annual_revenue, only_integer: true , greater_than_or_equal_to: 0 
  validate :mens_apparel, :womens_apparel, :must_have_one_gender_apperal
  
  def must_have_one_gender_apperal
    if !womens_apparel
    elsif !mens_apparel
      errors.add("should keep at least one gender apparel")
    end
  end
end

puts "enter a store name"
enter_name = gets.chomp

puts store = Store.new(name: enter_name).valid?("annual_revenue cannot be blank")

