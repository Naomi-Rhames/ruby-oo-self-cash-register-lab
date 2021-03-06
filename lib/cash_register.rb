require "pry"
class CashRegister
    attr_accessor :total, :discount, :price, :items, :last_transaction

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
      @price = price

    end
  
    def add_item(item, price, quantity = 1)
      @price = price
      @total += price * quantity
      @last_transaction =  price * quantity
      if quantity > 1
        counter = 0
        while counter < quantity
          @items << item
          counter += 1
        end
      else
        @items << item
      end
    end
  
    def apply_discount
      if discount > 0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        return "After the discount, the total comes to $#{total}."
      else
        return "There is no discount to apply."
      end
    end
  
    def void_last_transaction
    @total -= last_transaction
    end
  
end
