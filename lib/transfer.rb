class Transfer
  attr_accessor :reciever, :amount, :name
  
 def initialize(name, reciever, amount)
   @reciever = reciever 
   @amount = amount
   @name = name
 end
end
