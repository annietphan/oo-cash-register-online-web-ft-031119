class CashRegister
  attr_accessor :total, :discount, :last_transaction_amt, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      items << title
    end
    self.last_transaction_amt = price * quantity
  end

  def apply_discount
    if @discount > 0 
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the tota comes to $#{@total.to_i}"

  end

end
