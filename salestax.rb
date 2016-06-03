class Item

 attr_accessor :prod_name :prod_type :imported #methods to do @name = name

 def initialize(prod_name, prod_type)
   @prod_name = prod_name
   @prod_type = prod_type
 end

 def type

 end

end



class Receipt < Item

end

puts "What is the name of your first item"
item = gets.chomp!

puts "What type of item do you have (book, food, medical, else)"
type = gets.chomp!

puts "Is your item imported?"
import = gets.chomp!
