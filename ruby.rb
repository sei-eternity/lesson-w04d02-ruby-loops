input = ""
puts "You must guess the Magic Words to exit the while loop!"
while input != "Magic Words" do
  puts "What are the Magic Words?"
  input = gets.chomp
end
puts "You made it out! Congrats!"
#=========
input = ""
puts "You must guess the Magic Words to exit the while loop!"
until input == "Magic Words" do
  puts "What are the Magic Words?"
  input = gets.chomp
end
puts "You made it out! Congrats!"
#=========
puts "You must guess the Magic Words to exit the while loop!"
loop do
  puts "What are the Magic Words?"
  input = gets.chomp
  break if input == "Magic Words"
end
puts "You made it out! Congrats!"
#======================

users = ["Alice", "Bob", "Carol"]
users.length.times do |index|
  puts users[index]  
end

#=========================
#=========================
#==========EACH===========
names = [ "Donald", "Daisy", "Huey", "Duey", "Luey" ]
names.each do |name| 
    p "Hello #{name}"
end
#====================
numbers = [ 1, 3, 9, 11, 100 ]
numbers.each do |num|
    p num * num
end
#======================
fahrenheit_temps = [ -128.6, 0, 32, 140, 212 ]
fahrenheit_temps.each do |fah|
    c = (fah - 32.0) * (5.0 / 9.0)
    p  c
end
#========================
artists = [ "Leonardo", "Donatello", "Raphael", "Michelangelo" ]
ninja_turtles = []
artists.each do |artes|
    ninja_turtles.push(artes)
end
#==========================
flavors = [ "vanilla", "chocolate", "strawberry", "butter pecan", "cookies and cream", "rainbow" ]
toppings = [ "gummi bears", "hot fudge", "butterscotch", "rainbow sprinkles", "chocolate sprinkles" ]

flavors.each do |falv|
    toppings.each do |topp|
        p "#{falv} comes with #{topp}"
    end
end
#=========================
#=========================
#============MAP==========
cart = ["shoes", "watch", "computer"]
uppercase = cart.each do |product|
  caps_product = product.upcase
  puts caps_product
  p uppercase
  caps_product
end
puts uppercase.join(", ")

cart = ["shoes", "watch", "computer"]
uppercase = cart.map do |product|
  caps_product = product.upcase
  puts caps_product
  caps_product
end
puts uppercase.join(", ")

How would you explain the difference in the result?
#===========================

cart = ["shoes", "watch", "computer"]
uppercase = []
cart.each{|product| uppercase.push(product.upcase) }
puts uppercase.join(", ")


cart = ["shoes", "watch", "computer"]
uppercase = cart.map{|product| product.upcase }
puts uppercase.join(", ")

#============================

cart = ["shoes", "watch", "computer"]
uppercase = cart.map{|product| product.upcase }
puts cart
puts uppercase
Below is the same snippet, but with .map! instead of .map.

cart = ["shoes", "watch", "computer"]
uppercase = cart.map!{|product| product.upcase }
puts cart
puts uppercase

#===============================

first_names = [ "Donald", "Daisy", "Daffy" ]
result = []
first_names.map do |name|
    result.push("Duck #{name}")
end
#==============================

numbers = [ 1, 3, 9, 11, 100 ]
sqr = []
numbers.map do |num|
    sqr.push(num * num)
end

#=================

fahrenheit_temps = [ -128.6, 0, 32, 140, 212 ]
cel = []
fahrenheit_temps.map do |fah|
    cel.push((fah - 32.0) * (5.0 / 9.0))
end
