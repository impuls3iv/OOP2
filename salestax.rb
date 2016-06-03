class Item

 attr_accessor :name, :type, :imported, :cost #methods to do @name = name

 def initialize(prod_name, prod_type, prod_import, prod_cost)
   @prod_name = prod_name
   @prod_type = prod_type
   @prod_import = prod_import
   @prod_cost = prod_cost
 end

 def type

   if @prod_type == "book" || @prod_type == "food" || @prod_type == "med"
     puts "your item is tax exempt and your cost is #{@prod_cost}"
   elsif @prod_type == "food"
     puts "your item is tax exempt and your cost is #{@prod_cost}"
   elsif @prod_type == "med"
     puts "your item is tax exempt and your cost is #{@prod_cost}"
   else
     puts "your item is NOT tax exempt and your cost is #{@prod_cost * 0.1}"
   end

 end

 def name

 end



end



class Receipt < Item

end
#
# puts "What is the name of your first item"
# item_name = gets.chomp!
#
# puts "What type of item do you have (book, food, medical, else)"
# type = gets.chomp!
#
# puts "Is your item imported?"
# import = gets.chomp!
#
# item = Item.new(item_name, type, import)
# puts item
