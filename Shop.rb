class StockItem
    attr_accessor :name, :price

    def name=(name)
        @name = name
    end

    def name
        return @name
    end

    def price=(price)
        @price = price
    end

    def price
        return @price
    end
end

class Shop
    attr_accessor :stockItems

    def initialize
        @stockItems = []
    end

    def addStockItem(newStockItem, aName)
        stockItems.push(newStockItem)
        stockItems[stockItems.length-1].name = aName
    end

    def setPrice(aName, aPrice)
        for stockItem in stockItems
            if stockItem.name == aName
                stockItem.price = aPrice
            end
        end
    end

    def getAveragePrice()
        totalPrice = 0

        for stockItem in stockItems
            totalPrice += stockItem.price
        end

        average = totalPrice / stockItems.length

        return average
    end

    def print()
        puts "\nItems:"
        for stockItem in stockItems
            puts "#{stockItem.name}: #{stockItem.price}"
        end
    end
end

class NormalPriceStockItem < StockItem
    def price
        return @price
    end
end

class DiscountedStockItem < StockItem
    def price
        return @price - (0.1 * @price)
    end
end

my_shop = Shop.new()

for index in 1..3
    print "\nEnter name for item #{index}: "
    name = gets.chomp

    print "Enter price for item #{index}: "
    price = gets.chomp

    print "Enter type of item  #{index}: "
    type = gets.chomp

    if type == "n"
        my_shop.addStockItem(NormalPriceStockItem.new(), name)
        my_shop.setPrice(name.to_s, price.to_f)
    elsif type == "d"
        my_shop.addStockItem(DiscountedStockItem.new(), name)
        my_shop.setPrice(name.to_s, price.to_f)
    end
end

my_shop.print()

puts "\nAverage price is #{(my_shop.getAveragePrice()).round(2)}"
