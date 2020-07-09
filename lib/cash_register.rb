class CashRegister
  attr_accessor :total, :discount, :void_last_transaction, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    # @transactions = transactions
  end
  
  def add_item(item, price, quantity = 1)
    if quantity > 1
      i = 0
      while i<quantity
      @items << item
      i+=1
    end
  else
    @items << item
  end
  @total += price*quantity
  @void_last_transaction = @total
  @total
end

def apply_discount()
  if @discount > 0
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    return "After the discount, the total comes to $#{total}."
  else
    puts "There is no discount to apply"
  end
end

def void_last_transaction
  
end
end
