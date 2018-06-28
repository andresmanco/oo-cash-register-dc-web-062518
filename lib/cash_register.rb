require 'pry'
class CashRegister
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  attr_reader :discount, :quantity
  attr_accessor :total
  @@items = []
  
  def add_item(title, price, quantity= 1)

    @@items << title
    self.total+=price
    @quantity = quantity
    @backup = self.total- price
  end
  
  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
    self.total = self.total - self.total * self.discount/100
     "After the discount, the total comes to $#{self.total}."
   end
  end
  
  def items
    @@items
    
  end
  
  
  
  
    
end