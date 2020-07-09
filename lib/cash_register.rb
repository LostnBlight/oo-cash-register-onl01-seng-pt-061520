class CashRegister
  attr_accessor :total, :apply_discount, :void_last_transaction, :items
  
  def initialize(apply_discount = 0)
    @total = 0
    @apply_discount = discount
    @items = []
  end
  
  def 
