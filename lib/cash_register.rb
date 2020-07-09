class CashRegister
  attr_accessor :total, :discount, :void_last_transaction, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def item_added(title, price, quantity = 1)
    if quantity > 1
      i = 0
      while i<quantity
      @items << title
      i+=1
    end
  else
    @items << title
  end
  @total += price*quantity
  @void_last_transaction = @total
  @total
end

def apply_discount()
  if @discount > 0
    @discount = @discount/100.to_f
