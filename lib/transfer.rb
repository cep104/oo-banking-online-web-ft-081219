class Transfer
  attr_accessor :reciever, :amount, :sender
  
 def initialize(sender, reciever, amount)
   @reciever = reciever 
   @amount = amount
   @sender = sender
 end
end
