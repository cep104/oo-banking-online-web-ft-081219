class Transfer
  attr_accessor :receiver, :amount, :sender
  
 def initialize(sender, receiver, amount)
   @receiver = receiver
   @amount = amount
   @sender = sender
 end
end
