class Transfer
  attr_accessor :receiver, :amount, :sender, :pending
  
 def initialize(sender, receiver, amount)
   @receiver = receiver
   @amount = amount
   @sender = sender
   @status = "pending"
 end
end
