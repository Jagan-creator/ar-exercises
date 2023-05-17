require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: 'Whistler', annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
yaletown = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
    puts "#{store.name} has men's apparel in store - store annual revenue: #{store.annual_revenue}"
end

@womens_low_revenue = Store.where('annual_revenue < ?', 1000000).where(womens_apparel: true)

@womens_low_revenue.each do |store|
  puts "#{store.name} has women's apparel in store - store annual revenue: #{store.annual_revenue}"
end