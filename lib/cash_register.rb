class Register
  
  attr_accessor :total, :discount, :items, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @items = []
  end 

  def transaction(item, price, amount = 1)
    @price = price
    @total += price * amount
    if amount > 1 
      counter = 0 
      while counter < amount 
        @items << item 
        counter += 1
      end 
    else 
      @items << item 
    end 
  end 

  def apply_discount 
    if @discount > 0
      @take_off = (price * discount)/100
      @total -= @take_off 
      return "With the discount, the total is $#{total}."
    else 
      return "There is no discount."
    end 
  end 

  def void_last_transaction
    @total -= @price
  end 

end 
