class Transfer
  attr_accessor :receiver, :amount, :sender, :status
  
 def initialize(sender, receiver, amount)
   @receiver = receiver
   @amount = amount
   @sender = sender
   @status = "pending"
 end
 
 def valid?
  sender.valid? && receiver.valid?
 end
 
 def execute_transaction 
 end
end
