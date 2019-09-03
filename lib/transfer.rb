class Transfer
  attr_accessor :receiver, :amount, :sender, :status
  
 def initialize(sender, receiver, amount)
   @receiver = receiver
   @amount = amount
   @sender = sender
   @status = "pending"
 end
 
 def valid?
   if sender.bankaccount.valid? == true && receiver.bankaccount.valid? == true 
     true 
   else
     false 
   end
 end
end
