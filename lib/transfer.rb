class Transfer
  attr_accessor :receiver, :amount, :sender, :status
  
 def initialize(sender, receiver, amount)
   @receiver = receiver
   @amount = amount
   @sender = sender
   @status = "pending"
 end
 
 def valid?
   if self.status 
 end
end
