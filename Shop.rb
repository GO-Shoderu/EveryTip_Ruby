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
    end
end

class Shop < StockItem
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
        for stockItem in stockItems
            puts "Stock name: #{stockItem.name}"
            puts "Stock price: #{stockItem.price}"
            puts "\n"
        end
    end
end

my_shop = Shop.new()

my_shop.addStockItem(StockItem.new(), "Pencil")
my_shop.setPrice("Pencil", 15)
my_shop.print()
