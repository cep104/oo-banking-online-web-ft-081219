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
   @sender.balance -= @amount 
   @receiver.balance += @amount
    @status = "complete"
   if @status = "complete"
    @amount = 0
  end
  if valid?
    "it's valid"
   else
       "Transaction rejected. Please check your account balance."
   end
 end
end
