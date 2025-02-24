require 'pry'
class CashRegister

  attr_accessor :discount, :total, :items, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @price = price * quantity
    self.total += price * quantity
    quantity.times do @items << title
    end
  end
  
  def apply_discount
    if discount != 0
      self.total *= (1.0 - (discount.to_f / 100))
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= @price
  end
  
end