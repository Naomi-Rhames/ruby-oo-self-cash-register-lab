require "pry"
class CashRegister
    attr_accessor :total, :discount
def initialize(discount = 20)
 @total = 0
 @discount = 20
end
def add_item(title, amount, quanity = 1)
@total += amount * quanity
end
def apply_discount
    @total -= @discount * @total
    end  
end
