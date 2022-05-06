class Shop
   attr_reader :items

   def initialize(name:, items:)
    @name = name
    @items = items
   end 

   def display
    puts "#{@name}"
    @items.each.with_index(1) do |item, index|
        puts "#{index}. #{item.name} #{item.price}"
    end
   end

   def sell(user, item)
    puts "#{item.name} #{item.price}"
    puts "#{user.money}"
    puts "#{user.money - item.price}"
   end

end