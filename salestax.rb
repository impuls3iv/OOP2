class Item

 attr_accessor :prod_name, :prod_type, :prod_import, :prod_cost #methods to do @name = name

 def initialize(prod_name, prod_type, prod_import, prod_cost)
   @prod_name = prod_name
   @prod_type = prod_type
   @prod_import = prod_import
   @prod_cost = prod_cost
 end

 def type #RUN THIS BEFORE IMPORTED METHOD`

   if @prod_type == "book" || @prod_type == "food" || @prod_type == "med"
     puts "your item is tax exempt and your cost is #{@prod_cost}"
  #  elsif @prod_type == "food"
  #    puts "your item is tax exempt and your cost is #{@prod_cost}"
  #  elsif @prod_type == "med"
  #    puts "your item is tax exempt and your cost is #{@prod_cost}"
   else
     puts "your item is NOT tax exempt and your cost is #{@prod_cost * 1.1}"
     @prod_cost = @prod_cost * 1.1
   end

 end

 def imported #RUN THIS ONLY AFTER TYPE METHOD

   if @prod_import == "yes"
     @prod_cost = @prod_cost * 1.05
     puts "#{@prod_name} has an import tax making it cost #{@prod_cost}"
   end

 end



end



class Receipt

  attr_accessor :items

  def initialize
    @items = []
  end

  def add_item(*new_item) #splat command to take multiple items
    @items += new_item
  end

  def publish
    @items.each do |i|
      puts "Item: #{i} - Name: #{i.prod_name} - Type: #{i.prod_type} - Imported: #{i.prod_import} - Cost: #{i.prod_cost}"
    end
  end

end

# item1 = Item.new('choco', 'food', 'yes', 10)
# item2 = Item.new('gum', 'candy', 'yes', 10)
# item1.type
# item1.imported
# item2.type
# item2.imported
# receipt = Receipt.new
# receipt.add_item(item2)







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
