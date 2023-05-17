require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Company Total Revenue: #{Store.sum(:annual_revenue)}" 
puts "Company Average Revenue: #{Store.average(:annual_revenue)}" 
puts "Stores Generating $1M or More in Annual Sales: #{Store.where('annual_revenue >= ?', 1000000).count}" 